class Course < ApplicationRecord
  has_many :schedules, dependent: :destroy, :inverse_of => :course
  accepts_nested_attributes_for :schedules
end
