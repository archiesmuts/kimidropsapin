class AllPhotosController < ApplicationController
  layout "application_tags"
  def index
    @published_posts = Post.final.order("created_at DESC")
    # @pagy, @records = pagy(Post.order("created_at DESC"), items: 6)
  end
end
