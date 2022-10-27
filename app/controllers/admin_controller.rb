class AdminController < ApplicationController

    before_action :authenticat_user!

    private

    def this_user
        current_user 
    end
end
