class ApplicationController < ActionController::API
    include Pundit::Authorization
    before_action :authenticate_user!
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def current_user
        @current_user
    end

    def authenticate_user!
        header = request.headers['Authorization']
        return render json: { error: 'Unauthorized' }, status: :unauthorized unless header

        token = header.split(' ').last
        begin
            decoded = JWT.decode(token, ENV['SECRET_KEY_BASE'], true, algorithm: 'HS256')
            @current_user = User.find(decoded[0]['user_id'])
        rescue JWT::DecodeError
            render json: { error: 'Invalid token' }, status: :unauthorized
        end
    end
    private
    def user_not_authorized(exception)
        render json: { error: "You are not authorized to perform this action." }, status: :forbidden
    end
end
