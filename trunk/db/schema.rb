# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081209095704) do

  create_table "document_types", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "description"
    t.string   "dir_name"
    t.string   "prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_versions", :force => true do |t|
    t.integer  "document_id"
    t.string   "version"
    t.string   "extension"
    t.string   "author"
    t.date     "released"
    t.boolean  "reviewed"
    t.string   "reviewref"
    t.boolean  "accepted"
    t.boolean  "with_comments"
    t.date     "completed"
    t.boolean  "paper"
    t.string   "testresult_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.integer  "project_id"
    t.integer  "document_type_id"
    t.integer  "doc_number"
    t.string   "description"
    t.string   "fname_suffix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "project_number"
    t.string   "fs_root"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
