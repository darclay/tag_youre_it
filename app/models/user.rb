class User < ApplicationRecord
    # invitations sent by user
    has_many :invitations
    # invitations received by user
    has_many :pending_invitations -> { where confirmed: false }, class_name: 'Invitation', foreign_key: "neighbor_id"
    
    # compiles list of all User's neighbors
    def neighbors
        invitations_sent = Invitation.where(user_id: id, is_accepted: true).pluck(:neighbor_id)
        invitations_received = Invitation.where(neighbor_id: id, is_accepted: true).pluck(:user_id)
        ids = invitations_sent + invitations_received
        User.where(id: ids)
    end

    def is_neighbor(user)
        Invitation.is_accepted_neighbor(id, user.id)
    end

    def send_invitation(user)
        # invitations is referencing all of the invitation instances we connected above with "has_many"
        invitations.create(neighbor_id: user.id)
    end

end
