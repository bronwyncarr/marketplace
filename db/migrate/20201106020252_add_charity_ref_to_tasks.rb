class AddCharityRefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :charity, null: false, foreign_key: true
  end
end
