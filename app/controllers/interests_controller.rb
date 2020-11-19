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
  # Find tasks the user has expressed interest in.
  # Uses scope 'previous' and 'current' to divide based on whether the date is in the future or past.
  def interests_by_user
    @old_interests = Interest.previous.where(user: current_user).includes(:task => [{image_attachment: :blob}, :skills, :required_skills, :address, :charity, :charity => [image_attachment: :blob]])
    @new_interests = Interest.current.where(user: current_user).includes(:task => [{image_attachment: :blob}, :skills, :required_skills, :address, :charity, :charity => [image_attachment: :blob]])
  end

  def set_interest
    @interest = Interest.find(params[:id]).includes(:task => [{image_attachment: :blob}, :skills, :required_skills, :address, :charity], :charity => [image_attachment: :blob])
  end

  # Only allow a list of trusted parameters through.
  def interest_params
    params.require(:interest).permit(:user_id, :task_id)
  end
end
