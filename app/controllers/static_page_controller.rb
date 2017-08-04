class StaticPageController < ApplicationController
  def home
    # list all posts
    @posts = Post.all
    @current_user = User.first
  end

  def list
  end

  def show_post
    @current_post = Post.find(params[:id])
    render :show
  end
end
