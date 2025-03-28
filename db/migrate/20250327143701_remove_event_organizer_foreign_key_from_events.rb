class RemoveEventOrganizerForeignKeyFromEvents < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :events, :event_organizers
  end
end
