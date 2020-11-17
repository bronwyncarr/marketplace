class CreateOrganisers < ActiveRecord::Migration[6.0]
  def change
    create_table :organisers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :charity, null: false, foreign_key: true

      t.timestamps
    end
  end
end