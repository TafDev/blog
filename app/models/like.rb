class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def post_is_liked

  end
end
