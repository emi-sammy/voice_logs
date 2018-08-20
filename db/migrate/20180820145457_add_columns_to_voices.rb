class AddColumnsToVoices < ActiveRecord::Migration[5.1]
  def change
    add_column :voices, :evaluator_name, :string
    add_column :voices, :log_date, :date
    add_column :voices, :log_time, :time
    add_column :voices, :customer_miss, :string
    add_column :voices, :business_miss, :string
    add_column :voices, :compliance_miss, :string
  end
end
