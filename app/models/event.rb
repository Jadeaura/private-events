class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :user_event_maps, foreign_key: "attended_event_id"
  has_many :attendees, :through => :user_event_maps, source: "attending_user"

  scope :upcoming, -> {where("date > ?", Time.now)}
  scope :previous, -> {where("date < ?", Time.now)}

  def self.upcoming_events
    self.where("date > ?", Time.now)
  end

  def self.previous_events
    self.where("date < ?", Time.now)
  end
end
