class Event < ActiveRecord::Base
  # Validations
  validates :title, :description, :date, presence: true

  # Relationships
  belongs_to :place
  has_many :users, through: :participations
  has_many :messages
end
