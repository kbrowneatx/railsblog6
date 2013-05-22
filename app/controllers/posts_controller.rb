class PostsController < ApplicationController
  def index
	@posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
	@comments = @post.comments.all
	@newcomment = @post.comments.new
  end

  def new
	@post = Post.new
  end

  def create
	@post = Post.new(params[:post])
	if @post.save
		redirect_to @post
	else
		render :edit
	end
  end

  def edit
	@post = Post.find(params[:id])
  end

  def update
	@post = Post.find(params[:id])
	if @post.update_attributes(params[:post])
		redirect_to @post
	else
		render :edit
	end
  end

  def destroy
	@post = Post.new(params[:post])
	if @post.destroy
		redirect_to posts_path
	else
		flash[:error] = "Error deleting post. Try again or contact sysadmin"
		redirect_to @post
	end
  end
end
