class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :ticket_no
      t.string :username
      t.string :patient_no
      t.string :reg_date
      t.string :address
      t.string :dob
      t.string :contact_no
      t.string :email
      t.string :guardian
      t.string :relation
      t.string :gender
      t.string :patient_status
      t.timestamps 
    end
  end
end
