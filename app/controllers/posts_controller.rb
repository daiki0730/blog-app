class PostsController < ApplicationController

  def index
  end

  def new
  end

  def create
    Post.create(title: tweet_params[:title], image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
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
