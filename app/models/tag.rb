class Tag < ApplicationRecord
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :users
  #they are used in posts_tags and tags_users join tables.
end
