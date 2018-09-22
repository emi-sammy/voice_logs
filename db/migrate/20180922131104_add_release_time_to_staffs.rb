class AddReleaseTimeToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :release_time, :integer
  end
end
