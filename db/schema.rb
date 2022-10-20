# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_19_121639) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountants", force: :cascade do |t|
    t.integer "patient_id"
    t.string "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.integer "reg_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lab_technicians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
    t.date "reg_date"
    t.date "birth_date"
    t.string "gender"
    t.string "contact_no"
    t.string "email"
    t.string "guardian"
    t.string "patient_status"
    t.string "image"
    t.integer "doctor_id"
    t.integer "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "ticket_number"
    t.string "ticket_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
