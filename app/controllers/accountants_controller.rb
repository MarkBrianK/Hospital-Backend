class AccountantsController < ApplicationController

    def index
        accountants = Accountant.all
        render json: accountants
    end
    def show
        accountant = Accountant.find_by(params[:id])
        if accountant
            render json: accountant
        else
            render json: { error: "Accountant Not Found" }, status: :not_found
        end
    end
end
