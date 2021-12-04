class Visit < ApplicationRecord
  belongs_to :patient, class_name: 'User', foreign_key: 'pat_id'
  belongs_to :doctor, class_name: 'User', foreign_key: 'doc_id'
end
