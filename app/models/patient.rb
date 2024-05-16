class Patient < ApplicationRecord
    validates :name, :email, :phone_number, :document_photo, presence: true
    validates :phone_number, format: { with: /\A\d{9}\z/, message: "Phone must contain 9 digits" }    
    validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "Special characters are not allowed" }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email must have a valid format" }
    validates :email, uniqueness: { case_sensitive: false, message: "Email must be unique" }
end
