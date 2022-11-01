# frozen_string_literal: true

class Pharmacies::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

   def create
    @pharmacy = Pharmacy.find_by_email(user_params[:email])
    if @pharmacy && @pharmacy.valid_password?(user_params[:password])
      sign_in :user, @pharmacy
      render json: @pharmacy
    elsif @pharmacy && not(@pharmacy.valid_password?(user_params[:password]))
      invalid_attempt
    else
      no_user
    end
  end

  def destroy
    @message = "Signed out"
    sign_out(@pharmacy)
    render json: @message
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
    private 

  def no_user
    render json: {error: "An account with email doesn't exist. Please create a new account"}
  end

  def invalid_attempt
    render json: {error: "Your password is incorrect"}, status: :unprocessable_entity
    
  end

  def user_params
    params.permit(:email, :password)
  end

  def respond_with(resources, _opts = {})
  render json: {
    status: {code: 200, message: "Logged in successfully."},
    data: PharmacySerializer.new(resource).serializable_hash[:data][:attributes]
  }, status: :ok
  end

  def respond_to_on_destroy
    if current_doctor
      render json: {
        status: 200,
        message: "logged out succesfully"
      },status: :ok
      else
        render json: {
          status: 401,
          message: "Couldn't find an active session"
        }, status: :unauthorized
        end
  end
end
