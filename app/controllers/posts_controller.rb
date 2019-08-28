class PostsController < ApplicationController

  def index
    @posts = Post.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Post.create(title: post_params[:title], image: post_params[:image], text: post_params[:text], user_id: current_user.id)
  end

  private

  def post_params
    params.permit(:title, :image, :text)
  end

  def set_post
    @post = Post.all
  end

end
