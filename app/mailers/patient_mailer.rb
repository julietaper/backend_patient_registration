class PatientMailer < ApplicationMailer
    def confirmation_email
      @patient = params[:patient]
      mail(to: @patient.email, subject: 'Confirmation Email')
    end
  end