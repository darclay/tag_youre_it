class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
    
    render json: @posts, include: [{user: {only: [:id, :first_name, :last_name, :profile_pic]}}, :comments, :tags]
  end

  # GET /posts/1
  # may need to use "where" clause on tags
  def show
    render json: @post, include: [{user: {only: [:id, :first_name, :last_name, :profile_pic]}}, :comments, :tags]
  end

  # POST /posts
  # need to address with O-Auth
  def create
    # @post.user = @current_user
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /posts/1
  # Will be 'display: none' on frontend
  # def destroy
  #   @post.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :birthday, :profile_pic, :details)
    end
end
