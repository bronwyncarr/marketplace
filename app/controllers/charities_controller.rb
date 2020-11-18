class CharitiesController < ApplicationController
  load_and_authorize_resource

  def index
    @charities = Charity.all.includes([:charity_kind, image_attachment: :blob])
  end

  def show; end

  def new; end

  def edit; end

  # When creating a new charity, the current user will be saved in the orgasnisers table for that charity.
  # They will not be able to post until they have been 'upgraded' by admin to role: organiser.
  # Once admin approves them, any future charities they addd, they are able to post for and manage straight away.
  def create
    if @charity.save! && 
      @organiser = current_user.organisers.new(charity_id: @charity.id)
      if @organiser.save!
        redirect_to @charity, notice: 'Your organisation was successfully created and has been added to your profile'
      else 
        render :new, notice: 'Your organisation was created but something went wrong adding it to your profile'
      end
    else
      render :new, notice: 'Something went wrong creating your organisation'
    end
  end

  def update
    if @charity.update(charity_params)
      redirect_to @charity, notice: 'Your organisation has been successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @charity.destroy
    redirect_to charities_url, notice: 'Your organisation has been deleted from our system.'
  end

  private

  def charity_params
    params.require(:charity).permit :name, :description, :charity_kind_id, :image
  end
end
