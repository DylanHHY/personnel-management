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

ActiveRecord::Schema.define(version: 2022_11_30_193133) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tel"
    t.string "add"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "emp_no"
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "client_id", null: false
    t.integer "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_events_on_client_id"
    t.index ["employee_id"], name: "index_events_on_employee_id"
    t.index ["record_id"], name: "index_events_on_record_id"
  end

  create_table "records", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start_at"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "employees", "roles"
  add_foreign_key "events", "clients"
  add_foreign_key "events", "employees"
  add_foreign_key "events", "records"
end
