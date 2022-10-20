class CreateAccountants < ActiveRecord::Migration[7.0]
  def change
    create_table :accountants do |t|
      t.string :bill
      t.integer :patient_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
