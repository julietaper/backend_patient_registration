class Api::PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      # Enqueue a job to send confirmation email asynchronously
      SendConfirmationEmailJob.perform_later(@patient.id)

      render json: { message: 'Patient registered successfully' }, status: :created
    else
      render json: { errors: @patient.errors.full_messages }, status: :unprocessable_entity
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
