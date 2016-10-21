class LikesController < ApplicationController
  def create
    like = Like.find_by(like_params)
    if like
      like.destroy
      render json: {success: "unliked"}
    else
      current_user.likes.create!(like_params)
      render json: {success: "liked"}
    end
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
