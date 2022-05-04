class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :subject
      t.text :content
      t.text :images
      t.integer :flag_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
