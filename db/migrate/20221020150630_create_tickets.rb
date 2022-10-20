class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_number
      t.string :ticket_item
      t.integer :laboratory_id
      t.string :bill
      t.string :bill_status
      t.integer :patient_id

      t.timestamps
    end
  end
end
