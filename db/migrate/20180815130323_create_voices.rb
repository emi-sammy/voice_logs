class CreateVoices < ActiveRecord::Migration[5.1]
  def change
    create_table :voices do |t|
      t.string :staff_num
      t.integer :evaluator_id
      t.date :year_month
      t.string :contact_details
      t.string :response_result
      t.string :evaluator_comment
      t.integer :score
      t.string :rank
      t.integer :status
      t.integer :item_one
      t.integer :item_two
      t.integer :item_three
      t.integer :item_four
      t.integer :item_five

      t.timestamps
    end
  end
end
