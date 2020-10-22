class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def add
  end
end
