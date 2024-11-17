class Location < ApplicationRecord
  validates :name, presence: true
  validates :office_manager_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :duplication_data_row, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "duplication_data_row", "id", "name", "office_manager_email", "updated_at"]
  end
  
end
