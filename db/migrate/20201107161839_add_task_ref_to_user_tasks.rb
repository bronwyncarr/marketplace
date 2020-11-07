class AddTaskRefToUserTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_tasks, :task, null: false, foreign_key: true
  end
end
