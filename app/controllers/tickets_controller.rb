class TicketsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

    def index
        all_tickets = Ticket.all
        render json: all_tickets
    end



    def show
        ticket = Ticket.find_by(id: params[:id])
        if ticket
            render json: ticket
        else
            render json: { error:"Ticket Not Found"}, status: :not_found
        end
    end



    def create
        ticket = Ticket.create(ticket_params)
        if
            ticket_to_get.valid?
            render json:ticket_to_create, status: :created
        else
            render json: {error: ticket_to_create.errors}, status: unprocessable_entity
        end
    end



    def destroy
        ticket_to_delete = Ticket.find_by(id: params[:id])
        if
            ticket_to_delete.valid?
            ticket_to_delete.destroy
            render json:  {message: "deleted successfully"}
            head :no_content
        else
            render json: {error: "requested resource not found"}, status: not_found
        end
    end


    private

    def ticket_params
        params.permit(:patient_id, :ticket_number, :ticket_item)

    end
end
