class Booking < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :customer
  belongs_to :event
  belongs_to :ticket

  # VALIDATIONS
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: %w[pending confirmed cancelled] }
end
