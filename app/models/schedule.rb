class Schedule < ApplicationRecord
  # relationship with trainer to include trainer_id in the new schedule form
  belongs_to :trainer, :inverse_of => :schedules
  # relationship with trainer to include trainer_id in the new schedule form
  belongs_to :course, :inverse_of => :schedules
  #accepts_nested_attributes_for :trainer
 
  # validation to check if the start time for the same trainer is already booked.  this way users cannot book the same start time once it is already scheduled with that specific trainer. 
  validates :start_time, uniqueness: { scope: :trainer_id, message: "You have already made this time available" }
  
  amoeba do
    enable
    exclude_associations :bookings
  end

end
