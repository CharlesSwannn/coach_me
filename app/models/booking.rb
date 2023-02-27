class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coach

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location, presence: true
end
