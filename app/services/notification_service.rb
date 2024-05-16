class NotificationService
    def initialize(patient)
      @patient = patient
    end
  
    def send_confirmation_message
      send_email
    end
  
    private
  
    def send_email
      SendConfirmationEmailJob.perform_later(@patient)
    end
  
    def send_sms
    end
  end
  