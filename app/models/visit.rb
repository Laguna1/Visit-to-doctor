class Visit < ApplicationRecord
  belongs_to :pat, class_name: 'User'
  has_one :appointment, dependent: :destroy
  has_one :doc, through: :appointments, source: :user
end
