class UserEventMap < ApplicationRecord
  belongs_to :attended_event, :class_name => "Event"
  belongs_to :attending_user, :class_name => "User"
end
