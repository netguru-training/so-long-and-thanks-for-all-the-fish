class Review < ActiveRecord::Base
  # Constans
  GRADE_MIN = 1
  GRADE_MAX = 6

  # Validations
  validates :text, :grade, presence: true
  validates :text, length: { minumum: 30, maximum: 3000 }
  validates :grade, numericality: { only_integer: true }, inclusion: Review::GRADE_MIN..Review::GRADE_MAX
  validates :user_id, uniqueness: { scope: :place_id }

  # Relationships
  belongs_to :place
  belongs_to :user
end
