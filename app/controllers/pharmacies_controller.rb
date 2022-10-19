class PharmaciesController < ApplicationController
  def index
    pharmacies = Pharmacy.all

    render json:pharmacies
  end
  def show
    pharmacies = Pharmacy.find(params[:id])
    render json:pharmacies
  end
  def create
  end
  def update
  end
  def destroy
  end


  private
  def pharmacy_params

    params.permit(:ticket_id, :remarks, :inventory_item)

  end

end

