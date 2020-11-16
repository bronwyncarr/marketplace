class MyRequestsController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy save]
  
  def index
    @tasks = Task.where(user_id: current_user)
  end

  def show
    @found_people =[]
    @task.interests.each do |item| 
        this_user = User.find(item.user_id)
        @found_people << this_user
    end
  end

  private 
  def set_task
    @task = Task.find(params[:id])
  end
end
