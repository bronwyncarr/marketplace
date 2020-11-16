module CharitiesHelper
  def charity_image_for(charity)
    charity.image.presence || 'heart43.jpg'
  end
end
