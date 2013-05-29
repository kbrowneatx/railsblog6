class PostsController < ApplicationController
  def index
	if params[:page]
		pg = params[:page].to_i
	else
		pg = 0
	end
	@posts = Post.recent.offset(pg * 3)
  end

  def show
    @post = Post.find(params[:id])
	@comments = @post.comments.order('created_at DESC')
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
		c = @post.comments.last
		if c.user_id.nil?
			c.user_id = rand(1..4)
			c.save
		end if
		redirect_to @post
	else
		render :edit
	end
  end

  def destroy
	@post = Post.find(params[:id])
	if @post.destroy
		redirect_to posts_path
	else
		flash[:error] = "Error deleting post. Try again or contact sysadmin"
		redirect_to @post
	end
  end
end
