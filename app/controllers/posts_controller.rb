class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], content: params[:post][:content])
    redirect_to(posts_path)
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to(posts_path)
  end
end
