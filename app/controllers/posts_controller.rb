class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:title], content: params[:content])
    redirect_to :index
  end
end
