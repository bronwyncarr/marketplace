class CreateEois < ActiveRecord::Migration[6.0]
  def change
    create_table :eois do |t|
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end