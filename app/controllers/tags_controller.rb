class TagsController < ApplicationController
  before_action :set_tag, only: :show

  # GET /tags
  def index
    @tags = Tag.all

    render json: @tags
  end

  # GET /tags/1
  def show
    render json: @tag
  end

# we removed update, create and delete crud methods
# admins can update Tags via rails console in terminal

# potential PMVP -> allow admins to use full crud on Tags on frontend (will need to add these methods back in here)

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

end
