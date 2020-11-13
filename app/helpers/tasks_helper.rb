module TasksHelper
  def image_for(task)
    if task.image.present?
      task.image
    elsif task.charity.image.present?
      task.charity.image
    else
      'food1.jpg'
    end
  end
end
