class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tags

  # has_many :followers, -> class_name: 'User', foreign_kay: "follwer_id"

end
