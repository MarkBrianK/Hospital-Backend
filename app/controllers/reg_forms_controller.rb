class RegFormsController < ApplicationController
  def index
    reg = RegForm.all
    render json: reg, include: ['patients']
  end
end
