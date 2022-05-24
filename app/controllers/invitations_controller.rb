class InvitationsController < ApplicationController
# needs review and alterations
# add in show methods

    def create
        # figure this out
        id1 = params[:ids][:id1]
        id2 = params[:ids][:id2]
        @invitation = Invitation.new(user_id: id1, neighbor_id: id2)
        @invitation.save
    end

    def update
        invitation = Invitation.find(params[:invitation_id])
        invitation.update(is_accepted: true)
    end
    
    def destroy
        invitation = Invitation.find(params[:invitation_id])
        invitation.destroy
    end


end
