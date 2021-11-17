class Visit < ApplicationRecord
  belongs_to :pat, class_name: 'User'
  has_one :appointment, dependent: :destroy
  has_one :doc, through: :appointments, source: :user

  scope :past_visits, -> { where('date < ?', Date.today) }
  scope :upcoming_visits, -> { where('date >= ?', Date.today) }
end
