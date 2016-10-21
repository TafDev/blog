class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :user_that_like, through: :likes, source: :post
  accepts_nested_attributes_for :comments, :allow_destroy => true
end
