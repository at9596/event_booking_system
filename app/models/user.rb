class User < ApplicationRecord
    # USE FOR PASSWORD_DIGEST COLUMN
    has_secure_password  

    # enum role: { customer: 0, organizer: 1 }, _default: 0
    # enum role: { :customer => 0, :organizer => 1 }
  
    validates :email, presence: true, uniqueness: true
    

    # CALLBACKS
    before_create :assign_default_role

    # METHODS

    def customer?
      role == "customer"
    end

    def organizer?
      role == "organizer"
    end
  
    def generate_jwt
      payload = { user_id: id, role: role }
      JWT.encode(payload, ENV['SECRET_KEY_BASE'], 'HS256')
    end
    private
    # USE CALLBACK ASSIGN DEFAULT ROLE
    #    IT CAN BE ACHIEVED BY DATABASE LEVEL AS default: 0
    def assign_default_role
        self.role ||= "customer"  # Assigns 'customer' role if no role is provided
    end
end
