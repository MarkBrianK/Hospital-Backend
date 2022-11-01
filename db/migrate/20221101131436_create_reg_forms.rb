class CreateRegForms < ActiveRecord::Migration[7.0]
  def change
    create_table :reg_forms do |t|
      t.string :reg_number
      t.integer :lab_number
      t.string :bill
      t.string :bill_status

      t.timestamps
    end
  end
end
