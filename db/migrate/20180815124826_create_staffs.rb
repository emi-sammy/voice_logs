class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :staff_num
      t.string :staff_name
      t.integer :evaluation_cycle

      t.timestamps
    end
  end
end
