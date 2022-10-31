class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :Name
      t.string :Job_description
      t.integer :Contact
      t.string :Email
      t.integer :Start_time
      t.integer :End_time
      t.string :Status

      t.timestamps
    end
  end
end
