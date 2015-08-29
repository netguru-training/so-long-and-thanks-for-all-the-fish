class Review < ActiveRecord::Base
  # Constans
  GRADE_MIN = 1
  GRADE_MAX = 2

  # Validations
  validates :text, :grade, presence: true
  validates :text, length: { minumum: 30, maximum: 3000 }
  validates :grade, numericality: { only_integer: true }, inclusion: in Review::GRADE_MIN..Review::GRADE_MAX
end
