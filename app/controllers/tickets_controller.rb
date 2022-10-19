class TicketsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Ticket.all, status: :ok
    end
    def show
        tickets = Ticket.find(params[:id])
        render json: tickets, status: :ok
    end

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end

    def destroy
        tickets = Ticket.find(params[:id])
        tickets.destroy
        head :no_content
    end 
end