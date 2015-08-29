class Place < ActiveRecord::Base
  # Validations
  validates :name, :street, :city, :country, :description, presence: true
  validates :avg_price, numericality: true

  # Relationships
end
