class Event < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :event_organizer, class_name: "User"
  has_many :tickets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  
  # VALIDATIONS
  validates :name, presence: true
  validates :date, presence: true
  validates :venue, presence: true
end
