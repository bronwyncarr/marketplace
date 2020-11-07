# class UserTasksController < ApplicationController
#   before_action :set_user_task, only: [:show, :edit, :update, :destroy] 
#   before_action :authenticate_user! 

#   # GET /user_user_tasks
#   def index
#     @user_tasks = Task.joins(user: current_user)
#   end
  
#   def new 
#     @tweet = Tweet.new
#   end

#   def create 
#     @tweet = current_user.tweets.new(tweet_params) 
#     if @tweet.save
#       redirect_to tweets_path
#     else
#       render :new
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_user_task
#       @user_task = User_task.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def user_task_params
#       params.require(:user_task).permit(:title, :summary, :description, :hours, :date, :image, :charity_id)
#     end

# end
