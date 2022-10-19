class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.string :patient_name
      t.string :ticket_number
      t.string :remarks
      t.string :inventory_item

      t.timestamps
    end
  end
end
