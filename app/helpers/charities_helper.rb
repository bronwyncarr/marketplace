module CharitiesHelper
  def charity_image_for(charity)
    if charity.image.present?
      charity.image
    else
      'food1.jpg'
    end
  end
end
