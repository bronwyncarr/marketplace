class AddCharityKindRefToCharity < ActiveRecord::Migration[6.0]
  def change
    add_reference :charities, :charity_kind, null: false, foreign_key: true
  end
end
