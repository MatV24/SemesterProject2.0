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

ActiveRecord::Schema.define(version: 2019_04_22_080314) do

  create_table "coursecriterions", force: :cascade do |t|
    t.integer "Exceed"
    t.integer "Accept"
    t.integer "Poor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.integer "criterion_id"
  end

  create_table "courseevaluations", force: :cascade do |t|
    t.integer "criteriathreshold"
    t.integer "course_id"
    t.integer "faculty_id"
    t.integer "criterion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courseevaluations_on_course_id"
    t.index ["criterion_id"], name: "index_courseevaluations_on_criterion_id"
    t.index ["faculty_id"], name: "index_courseevaluations_on_faculty_id"
  end

  create_table "coursefaculties", force: :cascade do |t|
    t.integer "course_id"
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_coursefaculties_on_course_id"
    t.index ["faculty_id"], name: "index_coursefaculties_on_faculty_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "Name"
    t.string "Number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criterions", force: :cascade do |t|
    t.string "Title"
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "Lastname"
    t.string "Firstname"
    t.string "Title"
    t.string "Email"
    t.string "Phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "max"
    t.integer "min"
    t.integer "mean"
    t.integer "courseevaluation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courseevaluation_id"], name: "index_reports_on_courseevaluation_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
