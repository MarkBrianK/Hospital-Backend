class LabTechniciansController < ApplicationController

      #GET/doc
      def index
        labtech = LabTechnician.all
        render json: labtech
    end

end
