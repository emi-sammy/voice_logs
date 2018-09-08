# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180908140439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evaluators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name", default: "", null: false
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_evaluators_on_confirmation_token", unique: true
    t.index ["email"], name: "index_evaluators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_evaluators_on_reset_password_token", unique: true
  end

  create_table "staffs", force: :cascade do |t|
    t.string "staff_num"
    t.string "staff_name"
    t.integer "evaluation_cycle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voice_checks", force: :cascade do |t|
    t.string "staff_num"
    t.integer "evaluator_id"
    t.string "evaluator_name"
    t.date "log_date"
    t.time "log_time"
    t.text "contact_details"
    t.text "response_result"
    t.text "evaluator_comment"
    t.string "status"
    t.string "customer_miss"
    t.string "business_miss"
    t.string "compliance_miss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "datetime"
  end

  create_table "voices", force: :cascade do |t|
    t.string "staff_num"
    t.integer "evaluator_id"
    t.date "year_month"
    t.string "contact_details"
    t.string "response_result"
    t.string "evaluator_comment"
    t.integer "score"
    t.string "rank"
    t.integer "status"
    t.integer "item_one"
    t.integer "item_two"
    t.integer "item_three"
    t.integer "item_four"
    t.integer "item_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "evaluator_name"
    t.date "log_date"
    t.time "log_time"
    t.string "customer_miss"
    t.string "business_miss"
    t.string "compliance_miss"
  end

end
