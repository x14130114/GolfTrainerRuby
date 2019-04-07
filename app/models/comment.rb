class Comment < ApplicationRecord
  #relationship with trainer
  belongs_to :trainer
  #belongs_to :user
end
