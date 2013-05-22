class CommentsController < ApplicationController
  def index
	@user = User.find(params[:user_id])
	@comments = @user.comments.delete_if{|x| x.user_id.nil?}
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
	@comment = @post.comments.build(params[:comment])
	@comment.user_id = 3
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
