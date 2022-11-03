class PharmasController < ApplicationController
  before_action :set_pharma, only: %i[ show update destroy ]

  # GET /pharmas
  def index
    @pharmas = Pharma.all

    render json: @pharmas
  end

  # GET /pharmas/1
  def show
    render json: @pharma
  end

  # POST /pharmas
  def create
    @pharma = Pharma.new(pharma_params)

    if @pharma.save
      render json: @pharma, status: :created, location: @pharma
    else
      render json: @pharma.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmas/1
  def update
    if @pharma.update(pharma_params)
      render json: @pharma
    else
      render json: @pharma.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmas/1
  def destroy
    @pharma.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharma
      @pharma = Pharma.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharma_params
      params.fetch(:pharma, {})
    end
end
