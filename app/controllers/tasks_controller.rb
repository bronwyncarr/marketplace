class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :save] 
  before_action :authenticate_user!, except: [:index]

  # GET /tasks
  # GET /tasks.json
  def index
    if params[:search].present?
      @tasks = Task.search_by(search_params)
    else
      @tasks = Task.all
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create 
    # task = Task.create(task_params)
    # redirect_to task

    @task = current_user.tasks.new(task_params)
    respond_to do |format|
      if @task.save!
        format.html { redirect_to @task, notice: 'Spot was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save
    @user_task = UserTask.new
    @user_task.task_id = params[:id]
    @user_task.user_id = current_user.id
    respond_to do |format|
      if @user_task.save
        format.html { redirect_to tasks_url, notice: 'Opportunityw as successfully added to your list' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
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
      params.require(:task).permit(:title, :summary, :description, :hours, :date, :image, :charity_id, skill_ids: [])
    end
end
