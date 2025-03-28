class RemoveForeignKeyFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :bookings, :customers
    remove_foreign_key :bookings, :events
    remove_foreign_key :bookings, :tickets
    
  end
end
