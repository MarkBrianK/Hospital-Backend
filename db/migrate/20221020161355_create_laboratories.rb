class CreateLaboratories < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratories do |t|
      t.integer :ticket_id
      t.string :remarks
      t.integer :lab_number

      t.timestamps
    end
  end
end
