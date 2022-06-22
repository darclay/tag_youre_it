class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_and_belongs_to_many :tags
    # invitations sent by user
    has_and_belongs_to_many :invitations,
      class_name: "User",
      join_table: :invitations,
      foreign_key: :user_id,
      association_foreign_key: :neighbor_id
end



# invitations received by user
    # has_many :pending_invitations, -> { where is_accepted: false }, class_name: 'Invitation', foreign_key: "neighbor_id"
    
    # # compiles list of all User's neighbors
    # def neighbors
    #     invitations_sent = Invitation.where(user_id: id, is_accepted: true).pluck(:neighbor_id)
    #     invitations_received = Invitation.where(neighbor_id: id, is_accepted: true).pluck(:user_id)
    #     ids = invitations_sent + invitations_received
    #     User.where(id: ids)
    # end

    # def is_neighbor(user)
    #     Invitation.is_accepted_neighbor(id, user.id)
    # end

    # def send_invitation(user)
    #     # invitations is referencing all of the invitation instances we connected above with "has_many"
    #     invitations.create(neighbor_id: user.id)
    # end

    # def pending_received_invitations
    #     Invitation.where(neighbor_id: id, is_accepted: false).pluck(:user_id)
    # end

    # def pending_sent_invitations
    #     Invitation.where(user_id: id, is_accepted: false).pluck(:neighbor_id)
    # end
