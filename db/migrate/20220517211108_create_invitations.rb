class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :neighbor_id
      t.boolean :is_accepted, default: :false

      t.timestamps
    end
  end
end
