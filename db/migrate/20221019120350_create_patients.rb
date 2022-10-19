class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.date :reg_date
      t.date :birth_date
      t.string :gender
      t.string :contact_no
      t.string :email
      t.string :guardian
      t.string :patient_status
      t.string :image
      t.integer :doctor_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
