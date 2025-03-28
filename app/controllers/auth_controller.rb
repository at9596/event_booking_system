class AuthController < ApplicationController
    skip_before_action :authenticate_user!
    def register
      unless params[:type] == "Customer"
        user = EventOrganizer.new(user_params)
      else
        user = Customer.new(user_params)
      end

      if user.save
        render json: { token: user.generate_jwt, user: user }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def login
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        render json: { token: user.generate_jwt, user: user }
      else
        render json: { error: "Invalid email or password" }, status: :unauthorized
      end
    end
  
    private

    # SAVE FROM MASS ASSIGNMENT
    def user_params
      params.permit(:name, :email, :password)
    end
  end
  