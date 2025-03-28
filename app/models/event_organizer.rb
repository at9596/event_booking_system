# SINCE WE ARE USING AUTHENTICATION , THAT"S WHY THIS MODEL USING STI
#     REFERENCES FROM : https://guides.rubyonrails.org/association_basics.html#single-table-inheritance-sti
class EventOrganizer < User
  # Associations
  has_many :events, dependent: :destroy
  
  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  private
  def assign_default_role
    self.role ||= "organizer"
  end
end
