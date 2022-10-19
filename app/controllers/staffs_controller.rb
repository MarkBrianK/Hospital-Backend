class StaffsController < ApplicationController
    def index
        staffs = Staff.all
        render json: staffs
    end
    def show 
        staff = Staff.all
        if staff
            render json: staff
        else
            render json: { error: "Staff Not Found" }, status: :not_found
        end
    end
end
