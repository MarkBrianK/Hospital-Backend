class AccountantsController < ApplicationController

        before_action :authenticate_user!
    
    def index
        accountant = Accountant.all
        render json: accountant
    end

    def show
        accountant = accountant.find_by(id: params[:id])
        if accountant
            render json: accountant
        else
            render json: {error: "accountant not found"}, status: :not_found
        end
    end


     def destroy
        accountant = accountant.find_by(id: params[:id])
        if accountant
            accountant.destroy
            render json: {message: "deleted successfuly"}
            head :no_content
        else
            render json: {error: "The requested resource could unfortunately not be found"}
        end
    end


    private

    def this_user
        current_accountant 
    end
end
