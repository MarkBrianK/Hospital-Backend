class CreateAccountants < ActiveRecord::Migration[7.0]
  def change
    create_table :accountants do |t|
      t.integer :patient_id
      t.string :cost

      t.timestamps
    end
  end
end
