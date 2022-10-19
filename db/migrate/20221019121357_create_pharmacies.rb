class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.integer :ticket_id
      t.string :remarks
      t.string :inventory_item

      t.timestamps
    end
  end
end
