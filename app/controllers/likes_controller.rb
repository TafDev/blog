class LikesController < ApplicationController
  def create
    like = Like.find_by(like_params.to_h.merge(user_id: current_user.id))
    if like
      like.destroy
      render json: {success: "unliked"}
    else
      like = current_user.likes.create!(like_params)
      render json: {success: "liked"}
    end
    ActionCable.server.broadcast("post_channel", message: {:post_id => like.post_id, count: like.post.likes.count})
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
