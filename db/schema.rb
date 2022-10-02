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

ActiveRecord::Schema[7.0].define(version: 2022_10_01_172141) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "telephone"
    t.string "email"
    t.string "gender"
    t.string "experience"
    t.integer "level"
    t.integer "desire_salary"
    t.integer "earliest_start_date"
    t.string "salary_mode"
    t.string "address_street"
    t.string "address_country"
    t.string "address_state"
    t.string "address_city"
    t.string "social_facebook_profile"
    t.string "social_linkedin_profile"
    t.string "social_twitter_profile"
    t.string "social_website"
    t.bigint "users_id"
    t.bigint "sources_id"
    t.bigint "jobs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobs_id"], name: "index_candidates_on_jobs_id"
    t.index ["sources_id"], name: "index_candidates_on_sources_id"
    t.index ["users_id"], name: "index_candidates_on_users_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "yoe"
    t.string "employment_type"
    t.string "work_mode"
    t.text "description"
    t.text "must_have_req"
    t.text "nice_to_have_req"
    t.text "benefit"
    t.string "location_country"
    t.string "location_street"
    t.string "location_state"
    t.string "location_city"
    t.string "salary_currency"
    t.string "salary_type"
    t.integer "internal_salary_from"
    t.integer "internal_salary_to"
    t.string "public_salary"
    t.string "status"
    t.integer "quantity"
    t.datetime "issue_from"
    t.datetime "issue_to"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_jobs_on_users_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "source_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name", null: false
    t.text "email", null: false
    t.string "password_digest", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
