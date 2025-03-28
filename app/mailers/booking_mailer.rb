class BookingMailer < ApplicationMailer
    def confirmation_email(customer, event)
        @customer = customer
        @event = event
        mail(to: @customer.email, subject: "Booking Confirmation for #{@event.name}")
    end
end
