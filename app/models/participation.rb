class Participation < ActiveRecord::Base
  # Relationships
  belongs_to :event
  belongs_to :user
end
