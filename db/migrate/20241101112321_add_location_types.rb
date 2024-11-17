class AddLocationTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :individual_business, :boolean
    add_column :locations, :group, :boolean
    add_column :locations, :dental_school, :boolean
    add_column :locations, :clinic, :boolean
    add_column :locations, :fqhc, :boolean
    add_column :locations, :indian_health_services, :boolean
    add_column :locations, :mobile_unit, :boolean
  end
end
