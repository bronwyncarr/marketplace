class InterestsController < ApplicationController
  before_action :set_interest, only: %i[show destroy]
  before_action :interests_by_user, only: :index

  def index
    @interests = Interest.all.where(user_id: current_user[:id])
  end

  def show; end

  def destroy
    @interest.destroy
    redirect_to interests_url, notice: 'interest was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def interests_by_user
    @interests = Interest.where(user: current_user[:id])
  end

  def set_interest
    @interest = Interest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def interest_params
    params.require(:interest).permit(:user_id, :task_id)
  end
end
