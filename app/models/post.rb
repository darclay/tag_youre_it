class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :tags
#need to confirm that syntax below is valid.
  has_many :followers, class_name: "User", foreign_key: "follower_id"
end
