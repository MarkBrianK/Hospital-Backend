class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_item
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
