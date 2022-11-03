class RegFormPatientsController < ApplicationController
  def index
    form  = RegFormPatient.all
    render json: from
  end


end
