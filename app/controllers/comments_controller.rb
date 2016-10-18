class CommentsController < ApplicationController

  def create
    post = Post.find_by(id: params[:post_id])
    comment = post.comments.create(comment_params.to_h.merge(user_id: current_user.id))
    render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
