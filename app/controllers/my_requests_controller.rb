class MyRequestsController < ApplicationController
  before_action :set_task, only: :show

  # Show tasks from all charities that the user is associated with
  def index
    # Find all the charities the user is associated with through current_user.charities
    # This may returns multiple rows of charities
    # Then for each charity in the array look for all Tasks where the charity_id of the task has that charities.id
    # Must use .where as multiple tasks could have the same charity id
    @new_tasks = []
    @old_tasks = []
    current_user.charities.each do |charity_found|
      @new_tasks << Task.current.where(charity_id: charity_found.id).includes([:charity, image_attachment: :blob])
      @old_tasks << Task.previous.where(charity_id: charity_found.id).includes([:charity, image_attachment: :blob])
    end
  end

  # Show all people interested in a task
  def show
    # Logic similar to above
    # For that task find all interests from tasks-intersts connection
    # This may returns multiple interest rows
    # Then for each row, find the user who has matching user_id
    # Can use .find as only one user will have that user_id
    @found_people = []
    @task.interests.each do |interest_found|
      interested_users = User.find(interest_found.user_id)
      @found_people << interested_users 
    end
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
end
