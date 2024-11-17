class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :office_manager_email
      t.string :duplication_data_row
      t.timestamps
    end
  end
end
