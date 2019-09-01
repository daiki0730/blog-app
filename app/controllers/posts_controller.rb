class PostsController < ApplicationController


  def index
    @posts = Post.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user_id == current_user.id
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params) if post.user_id == current_user.id
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
  end

  def slide
    @posts = Post.all.page(params[:page]).per(5).order("created_at DESC")
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :text,).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.all
  end

end
