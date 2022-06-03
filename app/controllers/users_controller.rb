class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  # Functionality for User
    # Full CRUD: 
      # show - single user profile information
      # index - neighbor list 
      # update - 
      # create - 
# TODO
    # add methods for is_restricted, is_admin, flag_count
    # be able to see all users, single users, and user instances 
    # Search - explore cards to search through posts
    # PPPMVP/Ideal Search - able to search everything (users/posts) in one place
                        # - keywords in post content
    # Neighbor 


# METHODS
# compiles list of all User's neighbors
  def neighbors
    invitations_sent = Invitation.where(user_id: id, is_accepted: true).pluck(:neighbor_id)
    invitations_received = Invitation.where(neighbor_id: id, is_accepted: true).pluck(:user_id)
    ids = invitations_sent + invitations_received
    User.where(id: ids)
  end

  def is_neighbor(user)
    Invitation.is_accepted_neighbor(@user.id, user.id)
  end

  def send_invitation(user)
    # invitations is referencing all of the invitation instances we connected above with "has_many"
    invitations.create(neighbor_id: user.id)
  end

  def pending_received_invitations
    Invitation.where(neighbor_id: id, is_accepted: false).pluck(:user_id)
  end

  def pending_sent_invitations
    Invitation.where(user_id: id, is_accepted: false).pluck(:neighbor_id)
  end

  # GET /users
  # def index
  #   @users = User.all
    
  #   render json: @users, except: :password_digest
  # end

  # GET /users/1
  # may need to use "where" clause on tags
  def show
    render json: @user, except: [:password_digest, :birthday], include: [:posts, :tags]
  end

  # POST /users
  # need to address with O-Auth
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /users/1
  # isAccountActive 
  # def destroy
  #   @user.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :birthday, :profile_pic, :details)
    end
end
