class LabTechniciansController < ApplicationController

      #GET/doc
      def index
        Labtech = LabTechnician.all
        render json: Labtech
    end

end
