module CharitiesHelper
  def charity_image_for(charity)
    charity.image.presence || 'food1.jpg'
  end
end
