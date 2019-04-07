class Trainer < ApplicationRecord
  has_many :comments
  has_many :schedules, dependent: :destroy, :inverse_of => :trainer
  accepts_nested_attributes_for :schedules
  #scope by_name  order(:first_name)
  
  #mount_uploader :photo, TrainerUploader
  
  def name 
    "#{first_name} #{last_name}"
  end
  
  def email
    User.find_by_id(self.user_id)
  end

end
