class CharitiesController < ApplicationController
  load_and_authorize_resource

  def index
    @charities = Charity.all
  end

  def show; end

  def new; end

  def edit; end

  def create
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

  def charity_params
    params.require(:charity).permit :name, :description, :charity_kind_id, :image
  end
end
