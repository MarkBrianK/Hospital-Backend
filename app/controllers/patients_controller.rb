class PatientsController < ApplicationController

    # @method GET
    # @access Private
    # endpoint /patients

    def index
        all_patients = Patient.all
        render json: all_patients
    end


    # @method GET
    # @access Private
    # endpoint /patients/:id
    # get single patient
    def show
        patient_to_get = Patient.find_by(:id params[:id])
        if patient_to_get
            render json: patient_to_get
        else
            render json: {error: "patient not found" }, status: not_found
        end
    end

     # @method POST
    # @access Private
    # endpoint /patients
    # add single patient

    def create
        patient_to_create = Patient.create(patient_params)
        if
            patient_to_get.valid?
            render json: patient_to_create, status: :created
        else
            render json: {error: 'unable to register a patient'}, status: unprocessable_entity
        end
    end

    # @method DELETE
    # @access Private
    # endpoint /patients/:id
    # delete single patient

    def destroy
        patient_to_delete = Patient.find_by(:id params[:id])
        if
            patient_to_delete.valid?
            patient_to_delete.destroy
            render json: {message: "deleted succesfully"}
            head: no_content
        else
            render json: {error: "requested resource not found"}, status: not_found
        end
    end

    # @method PATCH
    # @access Private
    # endpoint /patients/:id
    # delete single patient

    def update
        patient_to_update = Patient.find_by(id: params[:id])
        if
            patient_to_update.valid?
            patient_to_update.destroy(patient_params)
            render json: patient_to_update, status: :ok
        else
            render json: {error: "patient not found"}, status: :not_found
        end
    end

    Private
    def patient_params
        params.require(:patient).permit(:patient_name, :reg_date, :birt_date, :gender, :contact_no, :email, :guardian, :patient_status, :image, :doctor_id, :ticket_id) 
    end
end
