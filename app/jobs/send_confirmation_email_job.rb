class SendConfirmationEmailJob < ApplicationJob
  queue_as :default

  def perform(patient)
    PatientMailer.with(patient: patient).confirmation_email.deliver_now
  end
end