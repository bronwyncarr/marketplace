class InterestsController < ApplicationController
  before_action :set_interest, only: :destroy
  before_action :interests_by_user, only: :index

  def index
  end

  def destroy
    @interest.destroy
    redirect_to interests_url, notice: 'Your interest in this opportunity will no longer be recorded.'
  end

  private
  # Show interests applicable to the user
  def interests_by_user
    @interests = Interest.where(user: current_user)
  end

  def set_interest
    @interest = Interest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def interest_params
    params.require(:interest).permit(:user_id, :task_id)
  end
end
