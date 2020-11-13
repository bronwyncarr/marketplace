class CharitiesController < ApplicationController
  before_action :set_charity, only: %i[show edit update destroy save]

  def index
    @charities = Charity.all
  end

  def show; end

  def new
    @charity = Charity.new
  end

  def edit; end

  def create
    @charity = Charity.create(charity_params)
    if @charity.save!
      redirect_to @charity, notice: 'Charity was successfully created.'
    else
      render :new
    end
  end

  def update
    if @charity.update(charity_params)
      redirect_to @charity, notice: 'Charity was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @charity.destroy
    redirect_to charities_url, notice: 'Charity was successfully destroyed.'
  end

  private

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def charity_params
    params.require(:charity).permit :name, :description, :charity_kind_id, :image
  end
end
