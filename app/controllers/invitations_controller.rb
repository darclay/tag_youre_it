class InvitationsController < ApplicationController
  before_action :set_user
  before_action :set_invitation, only: :show

  # GET /invitations
  def index 
    @invitations = @user.invitations
    # @invitations = Invitations.all
    render json: @invitations
  end
  
  # GET /invitations/1
    def show 
      render json: @invitation 
    end

    private
    def set_invitation
      @invitation = @user.invitations.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
#     @neighbor = User.find(params[:id])
    end
end 
  
# before_action :set_invitation, only: [:show, :update, :destroy]
# before_action :set_user

# # NEED:
# # index for specific user for confirmed neighbors
# # index for current user for pending-incoming invitations (not accepted yet)
# # show for current user for outgoing invitations
#   # Ex: Paige sends Dave a request and it is not accepted yet. Paige goes to
#   #     Dave's profile and status says "pending" 

# # GET /invitations
# # Need: include neighbor information
#   def index 
#     @invitations = Invitations.all

#     render json: @invitations
#   end


# # GET /invitations/1
#   def show 
#     render json: @invitation 
#   end

# # POST /invitations/1
#   # def create
#   #     # figure this out
#   #     id1 = params[:ids][:id1]
#   #     id2 = params[:ids][:id2]
#   #     @invitation = Invitation.new(user_id: id1, neighbor_id: id2)
#   #     @invitation.save
#   # end

#   # def create
#   #   @user.invitations << @neighbor
#   # end

# # def create
# #   # @invitation.user = @current_user
# #   @invitation = Invitation.new(invitation_params)
# #   # @invitation.user = @current_user

# #   if @invitation.save
# #     render json: @invitation, status: :created, location: @invitation
# #   else
# #     render json: @invitation.errors, status: :unprocessable_entity
# #   end
# # end

# # PATCH/PUT /invitations/1
#   def update
#       invitation = Invitation.find(params[:invitation_id])
#       invitation.update(is_accepted: true)

#   end

# # DELETE /invitations/1
#   def destroy
#       invitation = Invitation.find(params[:invitation_id])
#       invitation.destroy
#   end

#   private
#   # Use callbacks to share common setup or constraints between actions.
#   def set_invitation
#     @invitation = Invitation.find(params[:id])
#   end

#   def set_user
#     @user = User.find(params[:user_id])
#     @neighbor = User.find(params[:id])
#   end
#   # Only allow a list of trusted parameters through.
#   def invitation_params
#     params.require(:invitation).permit(:user_id, :neighbor_id, :is_accepted)
#   end
