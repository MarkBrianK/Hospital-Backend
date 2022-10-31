class LaboratoriesController < ApplicationController
    def index
        laboratories = Laboratories.all
    
        render json: laboratories
       end
    
       def show
        laboratories = Laboratories.find(params[:id])
        render json: laboratories
       end
      
       def create
        laboratories = Laboratories.create(laboratory_params)
        render json: laboratories
       end
     
       def update
        laboratories = Laboratories.find_ by(params[:id])
        laboratories.update(laboratories_params)
        render json: laboratories
       end
    
       def destroy
        laboratories = Laboratory.find_by(params[:id])
        laboratories.destroy
        head :no_content
       end
    
      private
    
       def laboratory_params
        params.permit(:test_name, :cost_of_test, :description)
       end
    
end
