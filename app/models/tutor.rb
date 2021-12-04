class Tutor < ApplicationRecord
  # Associations
  belongs_to :course

  # Validations
  validates_presence_of :name, :age, :email, :mobile
end
