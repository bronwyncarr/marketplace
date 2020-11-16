module CharitiesHelper
  # shows charity image if they have one, otherwise default
  def charity_image_for(charity)
    charity.image.presence || 'heart43.jpg'
  end
end
