class CreateLaboratories < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratories do |t|
      t.string :test_name
      t.string :cost_of_test
      t.string :description
      

      t.timestamps
    end
  end
end
