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
  
  #     @found_people << item.user_id
  #   end
  #   @list = []
  #   @found_people.each do |person|
  #     @list << User.where(id: person)
  #   end
  #   @list
  # end
  
# @found_people << User.where(id: item[user_id])


  private 
  def set_task
    @task = Task.find(params[:id])
  end
end
