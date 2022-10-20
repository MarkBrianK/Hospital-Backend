class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :patient_id
      t.integer :ticket_number
      t.string :ticket_item
      t.timestamps
    end
  end
end
