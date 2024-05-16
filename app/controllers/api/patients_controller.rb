class Api::PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      NotificationService.new(@patient).send_confirmation_message
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def index
    @patients = Patient.all
    render json: @patients
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :email, :phone_number, :document_photo)
  end
end