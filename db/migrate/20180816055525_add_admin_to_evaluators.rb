class AddAdminToEvaluators < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluators, :admin, :boolean, default: false
  end
end
