class Invitation < ApplicationRecord
  belongs_to :user

  # checking if two users have pending or accepted invitations
  def self.is_initiated(id1, id2)
    case1 = !Invitation.where(user_id: id1, neighbor_id: id2).empty?
    case2 = !Invitation.where(user_id: id2, neighbor_id: id1).empty?
    case1 || case2
  end

  # checking if two users are accepted neighbors
  def self.is_accepted_neighbor(id1, id2)
    case1 = !Invitation.where(user_id: id1, neighbor_id: id2, is_accepted: true).empty?
    case2 = !Invitation.where(user_id: id2, neighbor_id: id1, is_accepted: true).empty?
    case1 || case2
  end

  # checking for and returning invitation ids for accepted neighbor relationships
  def self.find_invitation(pagie, julia)
    # if neighbor is not accepted and user1 did not send the invitation
    if Invitation.where(user_id: pagie, neighbor_id: julia, is_accepted: true).empty?
      # return invitation id from user2
      Invitation.where(user_id: julia, neighbor_id: pagie, is_accepted: true)[0].id
    else
      # otherwise, return invitation id from user1
      Invitation.where(user_id: pagie, neighbor_id: julia, is_accepted: true)[0].id
    end
  end

end
