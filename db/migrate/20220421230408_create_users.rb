class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :location
      t.string :birthday
      t.text :profile_pic
      t.text :details
      t.integer :flag_count
      t.boolean :is_restricted
      t.boolean :is_admin

      t.timestamps
    end
  end
end
