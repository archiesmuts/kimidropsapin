class TagsController < ApplicationController
  layout "application_tags"
  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @posts = Post.tagged_with(@tag.name)
    @published_posts = Post.final.tagged_with(@tag.name)
  end
end
