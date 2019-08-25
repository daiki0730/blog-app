class PostsController < ApplicationController

  def index
  end

  def new
  end

  def create
    Post.create(image: "", text: "")
  end

  def show
    @posts = Post.order("created_at DESC")
  end

  private

  def post_params
    params.permit(:name, :image, :text)
  end

end
