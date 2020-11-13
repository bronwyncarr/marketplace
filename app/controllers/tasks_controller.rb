class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy save]
  before_action :authenticate_user!, except: [:index]

  # cancancan roles
  load_and_authorize_resource

  def index
    @tasks = if params[:search].present?
               Task.search_by(search_params)
             else
               Task.all
             end
  end

  def show
    if params[:type] == 'json'
      render json: { data: [@task.address.latitude, @task.address.longitude], center: [@task.address.latitude, @task.address.longitude] }
    end
  end

  def new
    @task = Task.new
    @task.build_address
  end

  def edit; end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  # Saves task to current users interests list and send email
  def save
    @interest = current_user.interests.new(task_id: params[:id])
    if @interest.save
      InterestMailer.send_interest_email(current_user).deliver
      redirect_to tasks_url, notice: 'Opportunity as successfully added to your list'
    else
      render :index, notice: 'Opportunity was not able to be added to your profile. Please choose another.'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  def set_skills
    @requiredskills = RequiredSkill.find(params[:id])
  end

  # Search parameters allowed through
  def search_params
    params.require(:search).permit(:title, skills: [])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:title, :summary, :description, :hours, :date, :image, :charity_id, skill_ids: [], address_attributes: %i[street_add suburb state country])
  end
end
