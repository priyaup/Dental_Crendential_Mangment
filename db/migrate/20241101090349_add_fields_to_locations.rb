class AddFieldsToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :internet_connection, :string
    add_column :locations, :ada_accessibility, :string
    add_column :locations, :accepting_new_patients, :string
    add_column :locations, :treat_children, :string
    add_column :locations, :treat_disabled_adults, :string
    add_column :locations, :treat_disabled_children, :string
    add_column :locations, :early_morning_appointments, :string
    add_column :locations, :evening_appointments, :string
    add_column :locations, :language_1, :string
    add_column :locations, :language_2, :string
    add_column :locations, :language_3, :string
    add_column :locations, :interpreted_language_1, :string
    add_column :locations, :interpreted_language_2, :string
    add_column :locations, :interpreted_language_3, :string
  end
end
