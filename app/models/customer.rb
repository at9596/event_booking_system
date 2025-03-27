class Customer < ApplicationRecord
    # Associations
    has_many :bookings, dependent: :destroy

    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
  end
  