class UserTasksController < ApplicationController
  before_action :set_user_task, only: [:show, :update, :destroy]
  before_action :user_tasks_by_user, only: [:index, :chart]

  # GET /user_tasks
  # GET /user_tasks.json
  def index
    @user_tasks = UserTask.all.where(user_id: current_user[:id])
  end

  # GET /user_tasks/1
  # GET /user_tasks/1.json
  def show
  end

  # GET /user_tasks/new
  def new
    @user_task = UserTask.new
  end

  # POST /user_tasks
  # POST /user_tasks.json
  def create
    @user_task = UserTask.new(user_task_params)
    @user_task.user_id = current_user.id

    respond_to do |format|
      if @user_task.save
        format.html { redirect_to @user_task, notice: 'user_task was successfully created.' }
        format.json { render :show, status: :created, location: @user_task }
      else
        format.html { render :new }
        format.json { render json: @user_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_tasks/1
  # PATCH/PUT /user_tasks/1.json
  def update
    respond_to do |format|
      if @user_task.update(user_task_params)
        format.html { redirect_to @user_task, notice: 'user_task was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_task }
      else
        format.html { render :edit }
        format.json { render json: @user_task.errors, status: :unprocessable_entity }
      end
    end
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
