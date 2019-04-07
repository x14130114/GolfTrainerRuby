class Trainer < ApplicationRecord
  # relationship: Trainer table has many comments per Trainer
  has_many :comments
  # relationship: Trainer table has many schedules per Trainer
  has_many :schedules, dependent: :destroy, :inverse_of => :trainer
  accepts_nested_attributes_for :schedules
  #scope by_name  order(:first_name)

  # method to get the fullname by getting the first and last names from the db
  def name 
    "#{first_name} #{last_name}"
  end
  
  def email
    User.find_by_id(self.user_id)
  end

end
