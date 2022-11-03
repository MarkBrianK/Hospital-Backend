class CreatePharmas < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmas do |t|
        t.integer :patient_id
        t.string :ticket_id
        t.string :remark
        t.string :inventory_item
      t.timestamps
    end
  end
end
