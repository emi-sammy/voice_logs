class AddStaffAreaToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :staff_area, :string
  end
end
