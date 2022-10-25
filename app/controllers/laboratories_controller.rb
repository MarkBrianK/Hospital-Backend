class LaboratoriesController < ApplicationController

  def index
    labtech = Laboratory.all
    render json: labtech
  end
end
