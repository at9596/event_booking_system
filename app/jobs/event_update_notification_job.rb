class EventUpdateNotificationJob < ApplicationJob
  queue_as :default

  def perform(event_id)
    event = Event.find(event_id)
    customer_ids = event.bookings.pluck(:customer_id)&.uniq

    customer_ids.each do |customer_id|
      puts "Notification email will be sent to Customer #{customer_id} about updates to Event #{event_id}."
    end
  end
end
