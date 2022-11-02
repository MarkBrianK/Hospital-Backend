class ManagersController < ApplicationController
        def index
            manager = Manager.all
            render json: manager
        end
        private

    def this_user
        current_user  
    end
end
