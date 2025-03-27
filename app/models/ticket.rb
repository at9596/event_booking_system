class Ticket < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :event
  has_many :bookings, dependent: :destroy
  
  # VALIDATIONS
  validates :category, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :availability, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
