class StaticPageController < ApplicationController
  def home
    # list all posts
    @posts = Post.all
    @current_user = User.first
  end

  def list
  end
end
