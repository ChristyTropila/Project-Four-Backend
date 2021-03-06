# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_225415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buckets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trick_treat_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trick_treat_id"], name: "index_buckets_on_trick_treat_id"
    t.index ["user_id"], name: "index_buckets_on_user_id"
  end

  create_table "haunted_houses", force: :cascade do |t|
    t.float "lng"
    t.float "lat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trick_treats", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.bigint "haunted_house_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["haunted_house_id"], name: "index_trick_treats_on_haunted_house_id"
  end

  create_table "trivia", force: :cascade do |t|
    t.string "question"
    t.bigint "haunted_house_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "answer"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.index ["haunted_house_id"], name: "index_trivia_on_haunted_house_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "userName"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
