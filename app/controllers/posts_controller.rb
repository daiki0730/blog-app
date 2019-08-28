class PostsController < ApplicationController

  def index
  end

  def new
  end

  def create
    Post.create(title: post_params[:title], image: post_params[:image], text: post_params[:text], user_id: current_user.id)
  end

  def show
    @posts = Post.order("created_at DESC").page(params[:page]).per(3)
  end

  private

  def post_params
    params.permit(:title, :image, :text)
  end

  def set_post
    @post = Post.all
  end

end
