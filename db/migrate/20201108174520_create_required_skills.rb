class CreateRequiredSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :required_skills do |t|
      t.references :task, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
