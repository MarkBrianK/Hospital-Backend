class SessionsController < ApplicationController
      skip_before_action :authorized, only: [:create, :destroy]
     # login user
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: {login: "Invalid username or password" }}, status: :unauthorized
        end
    end
    def destroy
        if session[:user_id]
        session.delete :user_id
        # head :no_content
        render json: {message: "logged out successfully"}
        else
            render json: {errors: ["Not authorized"]}, status: unauthorized
        end
    end
end
