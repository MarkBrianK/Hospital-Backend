class LabTechniciansController < ApplicationController

      #GET/labtech
      def index
        labtech = LabTechnician.all
        render json: labtech
    end

end
