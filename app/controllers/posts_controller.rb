class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find params[:id]
    @post.update(post_paramters)
    @post.save
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_paramters)
    @post.save
    redirect_to posts_path
  end

  private

  def post_paramters
    params.require(:post).permit(:title, :author, :body, :published)
  end
end
