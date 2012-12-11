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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121210204557) do

  create_table "estimates", :force => true do |t|
    t.integer  "repair_id"
    t.integer  "vehicle_id"
    t.float    "labor_hrs"
    t.float    "labor_cost"
    t.float    "parts_cost"
    t.float    "duration"
    t.float    "second_parts_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garages_repairs", :id => false, :force => true do |t|
    t.integer "garage_id"
    t.integer "repair_id"
  end

  create_table "problems", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems_services", :id => false, :force => true do |t|
    t.integer "problems_id"
    t.integer "services_id"
  end

  create_table "repairshops", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip_code"
    t.string   "lat"
    t.string   "long"
    t.string   "phone_num"
    t.string   "business_license"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_category_id"
  end

  create_table "symptoms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms_problems", :id => false, :force => true do |t|
    t.integer "symptom_id"
    t.integer "problem_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "age"
    t.string   "lastCity"
    t.string   "lastZip"
    t.string   "lastLat"
    t.string   "lastLong"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "year"
    t.string   "maker"
    t.string   "submodel"
    t.string   "body_style"
    t.string   "engines"
    t.string   "transmission"
    t.string   "drivetrains"
    t.string   "performance"
    t.string   "handling"
    t.text     "exterior"
    t.text     "interior"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
