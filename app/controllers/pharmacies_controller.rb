class PharmaciesController < ApplicationController
        before_action :authenticate_user!
    
    def index
        pharmacist = Pharmacy.all
        render json: pharmacist
    end

    def show
        pharmacist = Pharmacy.find_by(id: params[:id])
        if pharmacist
            render json: pharmacist, include: [:pharmacist_images, :reviews]
        else
            render json: {error: "pharmacist not found"}, status: :not_found
        end
    end


     def destroy
        pharmacist = Pharmacy.find_by(id: params[:id])
        if pharmacist
            pharmacist.destroy
            render json: {message: "deleted successfuly"}
            head :no_content
        else
            render json: {error: "The requested resource could unfortunately not be found"}
        end
    end


    private

    def this_pharmacist
        current_pharmacist 
    end
end
