class UsersController < ApplicationController
      before_action :authorized
      skip_before_action :authorize, only: [:create]
    def index
        users = User.all
        render json: users
    end
    def show
        current_user = User.find_by(id: session[:user_id])
        if current_user
        render json: current_user #send logged n user to the client
        else
            render json: {error: "Not Authorized"}, status: :unauthorized
        end
    end
    # signup functionality
    def create
        user = User.create!(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    private
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
