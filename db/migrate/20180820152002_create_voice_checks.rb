class CreateVoiceChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :voice_checks do |t|
      t.string :staff_num
      t.integer :evaluator_id
      t.string :evaluator_name
      t.date :log_date
      t.time :log_time
      t.text :contact_details
      t.text :response_result
      t.text :evaluator_comment
      t.string :status
      t.string :customer_miss
      t.string :business_miss
      t.string :compliance_miss

      t.timestamps
    end
  end
end
