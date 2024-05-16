class SendConfirmationEmailJob < ApplicationJob
  queue_as :default

  def perform(patient_id)
    # Aquí puedes agregar la lógica para enviar el correo electrónico de confirmación
    patient = Patient.find(patient_id)
    PatientMailer.confirmation_email(patient).deliver_now
  end
end