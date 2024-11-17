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

ActiveRecord::Schema[7.0].define(version: 2024_11_01_112321) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "office_manager_email"
    t.string "duplication_data_row"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "office_name"
    t.string "office_street_address"
    t.string "office_suite_blog"
    t.string "office_city"
    t.string "office_state"
    t.string "office_zip"
    t.string "office_country"
    t.string "office_telephone"
    t.string "office_fax"
    t.string "contact_person"
    t.string "last_name"
    t.string "first_name"
    t.string "telephone"
    t.string "fax"
    t.string "email"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "corporate_npi"
    t.string "group_corporate_name_as_it_appears_on_w9"
    t.string "group_tax_id"
    t.string "office_email_address"
    t.string "web_address"
    t.string "internet_connection"
    t.string "ada_accessibility"
    t.string "accepting_new_patients"
    t.string "treat_children"
    t.string "treat_disabled_adults"
    t.string "treat_disabled_children"
    t.string "early_morning_appointments"
    t.string "evening_appointments"
    t.string "language_1"
    t.string "language_2"
    t.string "language_3"
    t.string "interpreted_language_1"
    t.string "interpreted_language_2"
    t.string "interpreted_language_3"
    t.string "community_provider"
    t.string "free_parking"
    t.string "monday_open"
    t.string "monday_close"
    t.string "tuesday_open"
    t.string "tuesday_close"
    t.string "wednesday_open"
    t.string "wednesday_close"
    t.string "thursday_open"
    t.string "thursday_close"
    t.string "friday_open"
    t.string "friday_close"
    t.string "saturday_open"
    t.string "saturday_close"
    t.string "sunday_open"
    t.string "sunday_close"
    t.string "carrier_of_self_insured_name"
    t.date "expiration_date"
    t.decimal "amount_of_coverage_per_occurrence"
    t.decimal "amount_of_coverage_aggregate"
    t.string "policy_number"
    t.boolean "individual_business"
    t.boolean "group"
    t.boolean "dental_school"
    t.boolean "clinic"
    t.boolean "fqhc"
    t.boolean "indian_health_services"
    t.boolean "mobile_unit"
  end

end
