module TasksHelper

  def image_for(task)
    # if task.image.present?
    #   task.image
    # else
    #   'food1.jpg'
    # end
    case task
    when task.image.present?
      task.image
    when task.charity.image.present?
      task.charity.image
    else
      'food1.jpg'
    end
  end
end

