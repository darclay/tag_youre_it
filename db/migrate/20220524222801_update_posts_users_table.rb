class UpdatePostsUsersTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts_users, :user_id, :follower_id
    rename_table :posts_users, :post_followers
  end
end
