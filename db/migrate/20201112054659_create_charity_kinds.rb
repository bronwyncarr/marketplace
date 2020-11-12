class CreateCharityKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :charity_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
