class PostsController < ApplicationController
  include Pagy::Backend

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :tag_cloud
  # GET /posts
  # GET /posts.json
  def index
    # @posts = Post.order("created_at DESC")
    @posts = Post.with_attached_photos.order("created_at DESC")
    @pagy, @published_records = pagy(Post.final.with_attached_photos.order("created_at DESC"), items: 6)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
      @posts = Post.limit(3).order("created_at DESC")
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        format.js { }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js   { render layout: false, content_type: 'text/javascript' }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_header_image
    @post = Post.friendly.find(params[:id])
    @header_image = @post.header_image
    @header_image.purge_later # or use purge_later
    # redirect_back(fallback_location: collections_path)
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Header image was deleted.'}
      format.json { head :no_content }
    end
  end
  def remove_all_photos
    @post = Post.friendly.find(params[:id])
    @photos = @post.photos
    @photos.purge_later # or use purge_later
    redirect_to @post, notice: 'Photos were deleted.'
  end

  def remove_photo_image
    @post = Post.friendly.find(params[:id])
    @photos = @post.photos
    @photos.each do |photo|
      @photo = ActiveStorage::Attachment.find(photo.id)
    end
    @photo.purge_later
    redirect_to @post, notice: 'One photo was deleted.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def tag_cloud
      # @tags = Post.tag_counts_on(:tags)
      @tags = Post.tag_counts_on(:tags).order('count desc').limit(20)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :published, :slug, :tag_list, :header_image, photos:[])
    end
end
