class LaboratoriesController < ApplicationController
        before_action :authenticate_user!
    
    def index
        laboratory = Laboratory.all
        render json: laboratory
    end

    def show
        laboratory = Laboratory.find_by(id: params[:id])
        if laboratory
            render json: laboratory, include: [:laboratory_images, :reviews]
        else
            render json: {error: "laboratory not found"}, status: :not_found
        end
    end


     def destroy
        laboratory = Laboratory.find_by(id: params[:id])
        if laboratory
            laboratory.destroy
            render json: {message: "deleted successfuly"}
            head :no_content
        else
            render json: {error: "The requested resource could unfortunately not be found"}
        end
    end


    private

    def this_laboratory
        current_laboratory 
    end
end
