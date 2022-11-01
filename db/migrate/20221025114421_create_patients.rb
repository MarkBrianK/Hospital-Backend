class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :username
      t.string :reg_date
      t.string :address
      t.string :dob
      t.string :contact_no
      t.string :email
      t.string :guardian
      t.string :relation
      t.string :gender
      t.string :patient_status
      t.string :doctors_remarks
      t.string :laboratory_comments
      t.string :doctors__prescription
      t.timestamps
    end
  end
end
