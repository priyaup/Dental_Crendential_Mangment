class AddFacilityInfoToLocations < ActiveRecord::Migration[7.0]
  def change
    # add_column :locations, :internet_connection, :string
    add_column :locations, :community_provider, :string
    add_column :locations, :free_parking, :string
    add_column :locations, :monday_open, :string
    add_column :locations, :monday_close, :string
    add_column :locations, :tuesday_open, :string
    add_column :locations, :tuesday_close, :string
    add_column :locations, :wednesday_open, :string
    add_column :locations, :wednesday_close, :string
    add_column :locations, :thursday_open, :string
    add_column :locations, :thursday_close, :string
    add_column :locations, :friday_open, :string
    add_column :locations, :friday_close, :string
    add_column :locations, :saturday_open, :string
    add_column :locations, :saturday_close, :string
    add_column :locations, :sunday_open, :string
    add_column :locations, :sunday_close, :string
  end
end

