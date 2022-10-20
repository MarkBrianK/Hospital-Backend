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
    pharmacies = Pharmacy.create(pharmacy_params)
    render  json: pharmacies
  end
  def update


    pharmacies  = Pharmacy.find_ by(params[:id])
    pharmacies.update(pharmacy_params)
    render json: pharmacies
  end
  def destroy
    pharmacies = Pharmacy.find_by(params[:id])
    pharmacies.destroy
    head :no_content
  end


  private
  def pharmacy_params

    params.permit(:ticket_id, :remarks, :inventory_item)

  end

end

