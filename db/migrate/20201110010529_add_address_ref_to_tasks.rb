class AddAddressRefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :address, null: false, foreign_key: true
  end
end
