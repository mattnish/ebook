# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150112075132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "chapter_pages", force: true do |t|
    t.string   "title"
    t.integer  "sequence_num"
    t.integer  "chapter_num"
    t.integer  "ebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cover_pages", force: true do |t|
    t.string   "title"
    t.integer  "sequence_num"
    t.integer  "ebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ebooks", force: true do |t|
    t.string   "title",           default: ""
    t.text     "description",     default: ""
    t.string   "cover_image",     default: ""
    t.boolean  "use_cover_image", default: false
    t.string   "publisher_name",  default: ""
    t.integer  "view_count",      default: 0
    t.integer  "active_status",   default: 1
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "theme_id",        default: 1
  end

  create_table "field_groups", force: true do |t|
    t.integer  "page_id"
    t.string   "page_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "required",     default: false
    t.string   "cssnamespace"
    t.string   "content_type"
    t.string   "layout"
  end

  add_index "field_groups", ["page_id", "page_type"], name: "index_field_groups_on_page_id_and_page_type", using: :btree

  create_table "general_pages", force: true do |t|
    t.string   "title"
    t.integer  "sequence_num"
    t.integer  "ebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_fields", force: true do |t|
    t.integer  "field_id"
    t.string   "field_type"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_fields", ["field_id", "field_type"], name: "index_image_fields_on_field_id_and_field_type", using: :btree

  create_table "segment_pages", force: true do |t|
    t.string   "title"
    t.integer  "sequence_num"
    t.integer  "ebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_fields", force: true do |t|
    t.integer  "field_id"
    t.string   "field_type"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "text_fields", ["field_id", "field_type"], name: "index_text_fields_on_field_id_and_field_type", using: :btree

  create_table "themes", force: true do |t|
    t.string   "title"
    t.string   "cssnamespace"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             default: "",  null: false
    t.string   "last_name",              default: ""
    t.text     "biography",              default: ""
    t.integer  "show_picture",           default: 1
    t.integer  "show_location",          default: 1
    t.string   "city_name",              default: ""
    t.string   "state_name",             default: ""
    t.string   "country_code",           default: ""
    t.string   "country_name",           default: ""
    t.integer  "terms_agree",            default: 0
    t.integer  "articles_posted",        default: 0
    t.string   "period_articles_posted", default: "0"
    t.datetime "last_period_update"
    t.integer  "user_type",              default: 2
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wysiwyg_fields", force: true do |t|
    t.integer  "field_id"
    t.string   "field_type"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wysiwyg_fields", ["field_id", "field_type"], name: "index_wysiwyg_fields_on_field_id_and_field_type", using: :btree

end
