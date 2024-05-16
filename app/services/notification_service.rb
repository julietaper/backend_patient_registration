class NotificationService
    def initialize(patient)
      @patient = patient
    end
  
    def send_confirmation_message
      send_email
      # Aquí puedes agregar la lógica para enviar SMS en el futuro
    end
  
    private
  
    def send_email
      SendConfirmationEmailJob.perform_later(@patient)
    end
  
    # Método de ejemplo para enviar SMS en el futuro
    def send_sms
      # Lógica para enviar SMS
    end
  end
  