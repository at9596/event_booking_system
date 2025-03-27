class EventOrganizer < ApplicationRecord
  # Associations
  has_many :events, dependent: :destroy
  
  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
