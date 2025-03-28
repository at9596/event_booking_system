class TicketBookingJob < ApplicationJob
  queue_as :default

  def perform(customer_id, event_id)
    
    customer = Customer.find(customer_id)
    event = Event.find(event_id)
     # SEND THE EMAIL
     BookingMailer.confirmation_email(customer, event).deliver_now

    puts "Email confirmation will be sent to Customer #{customer_id} for Event #{event_id}."
  end
end
