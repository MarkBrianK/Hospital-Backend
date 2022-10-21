class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.string :remarks
      t.string :inventory_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
