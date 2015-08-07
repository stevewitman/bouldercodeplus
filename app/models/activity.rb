class Activity < ActiveRecord::Base
  validates :title, presence: true
  validates :meet_time, presence: true
  validates :meet_place, presence: true
end
