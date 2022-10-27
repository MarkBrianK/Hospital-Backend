class UsersController < ApplicationController

    before_action :authenticate_user!
    
    def index
        user = User.all
        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: [:user_images, :reviews]
        else
            render json: {error: "user not found"}, status: :not_found
        end
    end


     def destroy
        user = User.find_by(id: params[:id])
        if user
            user.destroy
            render json: {message: "deleted successfuly"}
            head :no_content
        else
            render json: {error: "The requested resource could unfortunately not be found"}
        end
    end


    private

    def this_user
        current_user 
    end
end
