class Event < ActiveRecord::Base
  # Validations
  validates :title, :descritpion, :time, presence: true

  # Relationships
  belongs_to :place
  has_many :participations
end
