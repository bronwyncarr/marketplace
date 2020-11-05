class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.float :hours
      t.date :date

      t.timestamps
    end
  end
end
