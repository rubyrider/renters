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

ActiveRecord::Schema.define(version: 20170626161644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "citext"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "clients_properties", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit_name"
    t.integer "contract_period", default: 1, comment: "In Months"
    t.bigint "user_id"
    t.bigint "property_collection_id"
    t.index ["client_id"], name: "index_clients_properties_on_client_id"
    t.index ["property_collection_id"], name: "index_clients_properties_on_property_collection_id"
    t.index ["property_id"], name: "index_clients_properties_on_property_id"
    t.index ["user_id"], name: "index_clients_properties_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "client_id"
    t.bigint "user_id"
    t.integer "contract_id"
    t.bigint "property_id"
    t.datetime "due_date"
    t.datetime "invoicing_date"
    t.datetime "paid_at"
    t.datetime "cancelled_at"
    t.integer "rent_collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_invoices_on_client_id"
    t.index ["property_id"], name: "index_invoices_on_property_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.citext "code"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "property_clients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.bigint "user_id"
    t.string "phone", null: false
    t.string "suite"
    t.string "address1", null: false
    t.string "address2"
    t.string "district", null: false
    t.string "post_office"
    t.string "zip", null: false
    t.string "area", comment: "Thana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_property_clients_on_user_id"
  end

  create_table "property_collections", force: :cascade do |t|
    t.integer "section_id"
    t.bigint "property_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fee_cents", default: 0, null: false
    t.string "fee_currency", default: "USD", null: false
    t.string "name"
    t.index ["property_id"], name: "index_property_collections_on_property_id"
    t.index ["section_id"], name: "index_property_collections_on_section_id"
    t.index ["user_id"], name: "index_property_collections_on_user_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string "name"
    t.citext "code"
    t.bigint "user_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_renters_on_property_id"
    t.index ["user_id"], name: "index_renters_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sections_on_user_id"
  end

  create_table "sms_accounts", force: :cascade do |t|
    t.integer "amount", default: 0
    t.bigint "user_id"
    t.string "state"
    t.integer "payment_cents", default: 0, null: false
    t.string "payment_currency", default: "USD", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sms_accounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "number_of_property"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients_properties", "property_collections"
  add_foreign_key "clients_properties", "users"
  add_foreign_key "invoices", "properties"
  add_foreign_key "invoices", "users"
  add_foreign_key "properties", "users"
  add_foreign_key "property_clients", "users"
  add_foreign_key "property_collections", "properties"
  add_foreign_key "property_collections", "sections"
  add_foreign_key "property_collections", "users"
  add_foreign_key "renters", "properties"
  add_foreign_key "renters", "users"
  add_foreign_key "sections", "users"
end
