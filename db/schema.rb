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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_08_01_100810) do
=======
ActiveRecord::Schema.define(version: 2020_08_01_100454) do
>>>>>>> 43f268b989acd86e815589b613a95826ee67c706

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.bigint "spot_id", null: false
    t.string "category"
    t.string "descripton"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spot_id"], name: "index_amenities_on_spot_id"
  end

<<<<<<< HEAD
  create_table "favourites", force: :cascade do |t|
=======
  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "message"
>>>>>>> 43f268b989acd86e815589b613a95826ee67c706
    t.bigint "spot_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.index ["spot_id"], name: "index_favourites_on_spot_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
=======
    t.index ["spot_id"], name: "index_reviews_on_spot_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
>>>>>>> 43f268b989acd86e815589b613a95826ee67c706
  end

  create_table "spots", force: :cascade do |t|
    t.string "name"
    t.string "longitude"
    t.string "latitude"
    t.string "skill_level"
    t.string "disciplines"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "discipline"
    t.string "skill_level"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "amenities", "spots"
<<<<<<< HEAD
  add_foreign_key "favourites", "spots"
  add_foreign_key "favourites", "users"
=======
  add_foreign_key "reviews", "spots"
  add_foreign_key "reviews", "users"
>>>>>>> 43f268b989acd86e815589b613a95826ee67c706
end
