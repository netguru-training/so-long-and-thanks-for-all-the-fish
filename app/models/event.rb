class Event < ActiveRecord::Base
  # Validations
  validates :title, :descritpion, :time, presence: true

  # Relationships
  belongs_to :place
  has_many :users, through: :participations
  has_many :messages
end
