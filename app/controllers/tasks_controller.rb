class TasksController < ApplicationController
  load_and_authorize_resource

  #search of title, skills or display all
  def index
    @tasks = if params[:search].present?
               Task.search_by(search_params)
             else
               Task.current.includes([:skills, :required_skills, :address, :charity => [image_attachment: :blob], image_attachment: :blob])
             end
  end

  def show
    if params[:type] == 'json'
      render json: { data: [@task.address.latitude, @task.address.longitude], center: [@task.address.latitude, @task.address.longitude] }
    end
  end

  def new
    @task.build_address
  end

  def edit; end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to @task, notice: 'Request was successfully created.'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Request was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Request was successfully destroyed.'
  end

  # Saves task to current users interests list and send email
  def save
    @interest = current_user.interests.new(task_id: params[:id])
    if @interest.save
      InterestMailer.send_interest_task(current_user, @interest).deliver
      redirect_to tasks_url, notice: 'Opportunity as successfully added to your list'
    else
      render :index, notice: 'Opportunity was not able to be added to your profile. Please choose another.'
    end
  end

  private
  # Search parameters allowed through
  def search_params
    params.require(:search).permit(:title, skills: [])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:title, :summary, :description, :hours, :date, :image, :charity_id, skill_ids: [], address_attributes: %i[street_add suburb state country])
  end
end
