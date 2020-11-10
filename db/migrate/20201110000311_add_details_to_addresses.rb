class AddDetailsToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :longitude, :float
    add_column :addresses, :latitude, :float
  end
end
