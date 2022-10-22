class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :specialization
      t.integer :reg_no
      t.string :consultation_room
      t.integer :staff_id

      t.timestamps
    end
  end
end
