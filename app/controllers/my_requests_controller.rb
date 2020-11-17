class MyRequestsController < ApplicationController
  before_action :set_task, only: :show

  def index
     # Show requests made by the current user
    @tasks = Task.where(user_id: current_user).includes([:charity, image_attachment: :blob])
  end

  def show
    # Find people interested a particular task
    @found_people = []
    @task.interests.each do |item|
      interested_users = User.find(item.user_id)
      @found_people << interested_users
    end
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
end
