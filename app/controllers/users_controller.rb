class UsersController < ApplicationController

    before_action :authenticate_user!
    
    # def index
    #     user = User.all
    #     render json: user
    # end

    # def show
    #     user = User.all
    #     render json: user
    # end

    private

    def this_user
        current_user 
    end
end
