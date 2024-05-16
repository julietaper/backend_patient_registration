class Patient < ApplicationRecord
    validates :name, :email, :phone_number, :document_photo, presence: true
    validates :phone_number, format: { with: /\A\d{10}\z/, message: "debe tener 10 dígitos" }
  end
