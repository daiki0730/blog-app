class PostsController < ApplicationController

  def index
  end

  def new
  end

  def create
    Post.create(post_params)
  end

  def show
    @posts = Post.order("created_at DESC").page(params[:page]).per(3)
  end

  private

  def post_params
    params.permit(:title, :image, :text)
  end

end
