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

  def new
    @new_post = Post.new
    # pass @new_post to the form_for helper
  end

  def create_post
    # rails way to secure mass assigning
    Post.create(params.require(:post).permit(:title, :content))

    redirect_to root_path

    # same thing but individually
    # @new_post = Post.new
    #
    # @new_post.title = params[:post][:title]
    # @new_post.content = params[:post][:content]

    # render json: params
    # ? what happened after creating post

  end

  def edit_post
    @edited_post = Post.find(params[:id])

    render :edit
  end

  def update_post
    @updated_post = Post.find(params[:id])

    @updated_post.title = params[:post][:title]
    @updated_post.content = params[:post][:content]
    @updated_post.view_count = params[:post][:view_count]


    redirect_to single_blog_path(@updated_post) if @updated_post.save
  end
end
