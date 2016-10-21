class PostsController < ApplicationController
  before_action :find_post, only: [:show, :destroy]
  before_action :require_user, only: [:index, :show]

  def index
    @posts = Post.order("created_at DESC")
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    @post.destroy
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
