class Activity < ActiveRecord::Base
  validates :title, presence: true
  validates :meet_time, presence: true
  validates :meet_place, presence: true

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
end
