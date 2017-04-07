class AddAttendedEventToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :attended_event, foreign_key: true
  end
end
