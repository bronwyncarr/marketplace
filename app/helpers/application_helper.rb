module ApplicationHelper
  def flash_class_for(alert_level)
    case alert_level
    when 'notice' then 'alert alert-info'
    when 'success' then 'alert alert-success'
    when 'error' then 'alert alert-danger'
    when 'alert' then 'alert alert-warning'
    end
  end

  # Shows task image if they have one, otherwise, charity general, otherwise default
  # used in both task index and interest index
  def image_for(task)
    if task.image.present?
      task.image
    elsif task.charity.image.present?
      task.charity.image
    else
      'heart43.jpg'
    end
  end
end
