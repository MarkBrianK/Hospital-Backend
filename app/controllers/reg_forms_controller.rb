class RegFormsController < ApplicationController
  def index
    Reg = RegForm.all
    render json: Reg
  end
end
