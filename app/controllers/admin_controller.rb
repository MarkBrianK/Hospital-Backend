class AdminController < ApplicationController

    before_action :authenticate_user!

    private

    def this_user
        current_user 
    end
end
