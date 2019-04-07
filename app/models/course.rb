class Course < ApplicationRecord
  #Course has many schedules, as there can be a number of schedules with the same course
  has_many :schedules, dependent: :destroy, :inverse_of => :course
  accepts_nested_attributes_for :schedules
end
