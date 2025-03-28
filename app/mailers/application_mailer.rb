class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@yourapp.com"  # REGISTERED MAIL
  layout "mailer"
end
