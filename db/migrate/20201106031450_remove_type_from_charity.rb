class RemoveTypeFromCharity < ActiveRecord::Migration[6.0]
  def change
    remove_column :charities, :type, :string
  end
end
