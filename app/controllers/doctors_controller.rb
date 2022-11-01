class DoctorsController < ApplicationController
    class ManagersController < ApplicationController
        def index
            doctor = Doctor.all
            render json: doctor
        end
        private

    def this_user
        current_user  
    end
end

end
