class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role, optional: true
  belongs_to :category, optional: true

  has_many :created_visits, class_name: 'Visit', foreign_key: 'pat_id', dependent: :destroy
  # has_many :appointments, dependent: :destroy
  has_many :seen_visits, class_name: 'Visit', foreign_key: 'doc_id'

  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'Patient' if role.nil?
  end

  def admin?
    role.name == 'Admin'
  end

  def doctor?
    role.name == 'Doctor'
  end

  def patient?
    role.name == 'Patient'
  end

  # Search user by mobile number(not email)
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    where(mobile_no: conditions[:mobile_no]).first
  end

  # Stop using email as authentication key
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end
end
