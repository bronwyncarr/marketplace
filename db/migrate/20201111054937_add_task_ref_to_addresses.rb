class AddTaskRefToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :task, null: false, foreign_key: true
  end
end
