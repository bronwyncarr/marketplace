class UserTasksController < ApplicationController
  before_action :set_user_task, only: %i[show destroy]
  before_action :user_tasks_by_user, only: :index

  # GET /user_tasks
  # GET /user_tasks.json
  def index
    @user_tasks = UserTask.all.where(user_id: current_user[:id])
  end

  # GET /user_tasks/1
  # GET /user_tasks/1.json
  def show
  end

  # DELETE /user_tasks/1
  # DELETE /user_tasks/1.json
  def destroy
    @user_task.destroy
    respond_to do |format|
      format.html { redirect_to user_tasks_url, notice: 'user_task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def user_tasks_by_user
    @user_tasks = UserTask.where(user: current_user[:id])
  end

  def set_user_task
    @user_task = UserTask.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_task_params
    params.require(:user_task).permit(:user_id, :task_id)
  end
end
