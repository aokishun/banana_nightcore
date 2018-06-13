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

ActiveRecord::Schema.define(version: 2018_06_12_054607) do

  create_table "columns_priv", primary_key: ["Host", "Db", "User", "Table_name", "Column_name"], options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Column privileges", force: :cascade do |t|
    t.string "Host", limit: 60, default: "", null: false
    t.string "Db", limit: 64, default: "", null: false
    t.string "User", limit: 32, default: "", null: false
    t.string "Table_name", limit: 64, default: "", null: false
    t.string "Column_name", limit: 64, default: "", null: false
    t.timestamp "Timestamp", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "Column_priv", limit: 31, default: "", null: false, collation: "utf8_general_ci"
  end

  create_table "db", primary_key: ["Host", "Db", "User"], options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Database privileges", force: :cascade do |t|
    t.string "Host", limit: 60, default: "", null: false
    t.string "Db", limit: 64, default: "", null: false
    t.string "User", limit: 32, default: "", null: false
    t.string "Select_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Insert_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Update_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Delete_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Create_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Drop_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Grant_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "References_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Index_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Alter_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Create_tmp_table_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Lock_tables_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Create_view_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Show_view_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Create_routine_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Alter_routine_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Execute_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Event_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.string "Trigger_priv", limit: 1, default: "N", null: false, collation: "utf8_general_ci"
    t.index ["User"], name: "User"
  end

  create_table "engine_cost", primary_key: ["cost_name", "engine_name", "device_type"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0", force: :cascade do |t|
    t.string "engine_name", limit: 64, null: false
    t.integer "device_type", null: false
    t.string "cost_name", limit: 64, null: false
    t.float "cost_value"
    t.timestamp "last_update", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "comment", limit: 1024
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
