class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id"
  has_many :user_event_maps, foreign_key: "attending_user_id"
  has_many :attended_events, :through => :user_event_maps, source: "attended_event"
end
