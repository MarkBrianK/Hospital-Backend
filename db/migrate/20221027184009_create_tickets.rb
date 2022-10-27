class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :patient_name
      t.string :inventory_item
      t.string :item
      t.string :discount
      t.string :total_amount
      t.string :receipt_no

      t.timestamps
    end
  end
end
