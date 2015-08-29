class Place < ActiveRecord::Base
  # Validations
  validates :name, :street, :city, :country, presence: true
  validates :avg_price, numericality: true
  # Relationships
end
