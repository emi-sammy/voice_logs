class AddColumnToEvaluators < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluators, :name, :string, null: false, default: ''
  end
end
