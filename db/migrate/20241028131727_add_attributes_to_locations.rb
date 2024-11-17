class AddAttributesToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :office_name, :string
    add_column :locations, :office_street_address, :string
    add_column :locations, :office_suite_blog, :string
    add_column :locations, :office_city, :string
    add_column :locations, :office_state, :string
    add_column :locations, :office_zip, :string
    add_column :locations, :office_country, :string
    add_column :locations, :office_telephone, :string
    add_column :locations, :office_fax, :string
    add_column :locations, :contact_person, :string
    add_column :locations, :last_name, :string
    add_column :locations, :first_name, :string
    add_column :locations, :telephone, :string
    add_column :locations, :fax, :string
    add_column :locations, :email, :string
    add_column :locations, :street_address, :string
    add_column :locations, :city, :string
    add_column :locations, :state, :string
    add_column :locations, :zip, :string
    add_column :locations, :phone, :string
    add_column :locations, :corporate_npi, :string
    add_column :locations, :group_corporate_name_as_it_appears_on_w9, :string
    add_column :locations, :group_tax_id, :string
    add_column :locations, :office_email_address, :string
    add_column :locations, :web_address, :string
  end
end
