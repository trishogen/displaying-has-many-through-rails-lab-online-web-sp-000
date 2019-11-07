class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def num_appointments
    self.appointments ? self.appointments.count : 0
  end
end
