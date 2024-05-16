class ApplicationMailer < ActionMailer::Base
  default from: "patient@inbox.mailtrap.io"
  layout "mailer"
end
