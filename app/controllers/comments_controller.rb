class CommentsController < ApplicationController
  before_filter :set_current_user
  
  def index
	@user = User.find(params[:user_id])
	@comments = @user.comments
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
	@comment = @post.comments.build(params[:comment])
	@comment.user_id = @user.id
	raise
	if @comment.save
		redirect_to @post
	else
		render :edit
	end
  end
  
  def find_post
	@post = Post.find(params[:post_id])
  end
end
