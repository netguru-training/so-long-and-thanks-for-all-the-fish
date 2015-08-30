class Place < ActiveRecord::Base
  # Validations
  validates :name, :street, :city, :country, :description, presence: true
  validates :avg_price, numericality: true

  # Relationships
  has_many :reviews, -> { includes :user }, dependent: :destroy
  has_many :events, dependent: :destroy
end
