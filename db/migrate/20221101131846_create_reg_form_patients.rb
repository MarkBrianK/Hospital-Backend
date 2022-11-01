class CreateRegFormPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :reg_form_patients do |t|
      t.integer :patient_id
      t.integer :reg_form_id

      t.timestamps
    end
  end
end
