class Practice < ApplicationRecord
  has_many :doctors
  has_many :appointments
end
