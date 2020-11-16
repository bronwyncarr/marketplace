module InterestsHelper
  def interest_image_for(interest)
    if interest.task.image.present?
      interest.task.image
    elsif interest.task.charity.image.present?
      task.charity.image
    else
      'heart43.jpg'
    end
  end
end
