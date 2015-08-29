class Message < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Relationships
  belongs_to :user
  belongs_to :event
end
