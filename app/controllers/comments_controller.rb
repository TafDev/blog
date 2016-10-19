class CommentsController < ApplicationController
  before_action :authorization, only: [:update, :destroy]

  def create
    post = Post.find_by(id: params[:post_id])
    comment = post.comments.create(comment_params.to_h.merge(user_id: current_user.id))
    render json: comment
  end

  def update
    if @comment.nil?
      render json: {success: false}, status: 400
    else
      @comment.update(comment_params)
      render json: @comment
    end
  end

  def destroy
    @comment.destroy
    render json: {success: true}
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def authorization
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment
    else
      flash[:notice] = "Stop tryna fuck around!"
      @comment = nil
    end
  end


end
