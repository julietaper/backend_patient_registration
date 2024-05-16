class Patient < ApplicationRecord
    validates :name, :email, :phone_number, :document_photo, presence: true
  end
