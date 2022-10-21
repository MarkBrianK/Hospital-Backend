class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :reg_date
      t.string :gender
      t.string :contact_no
      t.string :email
      t.string :gurdian
      t.string :patient_status
      t.integer :doctor_id
      t.string :doctor_remarks
      t.string :laboratory_comments
      t.string :doctors_prescription

      t.timestamps
    end
  end
end
