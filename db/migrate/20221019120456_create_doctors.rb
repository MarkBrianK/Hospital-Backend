class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :specializtion
      t.integer :reg_no

      t.timestamps
    end
  end
end
