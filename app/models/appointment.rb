class Appointment < ApplicationRecord
  belongs_to :visit
  belongs_to :user
end
