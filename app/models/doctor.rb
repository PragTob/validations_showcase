class Doctor < ApplicationRecord
  has_many :appointments
  belongs_to :practice
end
