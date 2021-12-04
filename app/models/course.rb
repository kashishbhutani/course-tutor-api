class Course < ApplicationRecord
  # Associations
  has_many :tutors

  # Validations
  validates_presence_of :title, :description
end
