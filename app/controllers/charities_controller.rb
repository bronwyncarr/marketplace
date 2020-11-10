class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
  end

  def show
  end

  def new
    @charity = Charity.new
  end

  def edit; end

  def create
    charity = Charity.create(charity_params)
    redirect_to charity
    #   if @charity.save!
    #     format.html { redirect_to @charity, notice: 'Spot was successfully created.' }
    #     format.json { render :show, status: :created, location: @charity }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @charity.errors, status: :unprocessable_entity }
    #   end
  end

  def update
    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to @charity, notice: 'charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @charity.destroy
    respond_to do |format|
      format.html { redirect_to charities_url, notice: 'charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def charity_params
    params.require(:charity).permit :name, :description, :category, :image
  end
end
