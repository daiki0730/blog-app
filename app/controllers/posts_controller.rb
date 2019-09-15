class PostsController < ApplicationController

  before_action :set_post, only: [:slide ,:destroy]

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
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params) if post.user_id == current_user.id
    @posts = Post.all.page(params[:page]).per(5).order("created_at DESC")
    @user = User.all
  end

  def show
    @post = Post.find(params[:id])
    @like = Like.new
    @comments = @post.comments.includes(:user)
    @user = User.find_by(id: @post.user_id)
  end

  def slide
    @posts = Post.all.page(params[:page]).per(5).order("created_at DESC")
    @user = User.all
  end



  private

  def post_params
    params.require(:post).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.all
  end


end
