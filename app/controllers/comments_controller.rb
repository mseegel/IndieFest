class CommentsController < ApplicationController
  def new
    @film = Film.find(params[:film_id])
    @review = Review.find(params[:review_id])
  end

  def create
    @user = User.find(session[:user_id])
    @review = Review.find(params[:review_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = @user.id
    @comment.review_id = @review.id
    @comment.save
  end

  def show
  end

  def list
  end

  def comment_params
    params.require(:comments).permit(:comment);
  end
end
