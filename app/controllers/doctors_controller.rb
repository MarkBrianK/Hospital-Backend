class DoctorsController < ApplicationController

      #POST/docs
 def create
    doc = Doctor.create!(doc_params)
    doc = Doctor.find(params[:id])
    render json: doc
end
     #GET/doc
     def index
        doc = Doctor.all
        render json: doc
    end

    #GET/doc/id
    def show
        doc = Doctor.find(params[:id])
        render json: doc
    end

    #PATCH/doc/id
    def update
        doc = Doctor.find(params[:id])
        doc.update!(doc_params)
        render json: doc
        
    end

    private 

    def doc_params
        params.permit(:specializtion, :reg_no)
    end
end

