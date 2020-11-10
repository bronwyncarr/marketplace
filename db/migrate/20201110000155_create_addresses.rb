class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street_add
      t.string :suburb
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
