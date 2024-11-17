class AddInsuranceDetailsToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :carrier_of_self_insured_name, :string
    add_column :locations, :expiration_date, :date
    add_column :locations, :amount_of_coverage_per_occurrence, :decimal
    add_column :locations, :amount_of_coverage_aggregate, :decimal
    add_column :locations, :policy_number, :string
  end
end
