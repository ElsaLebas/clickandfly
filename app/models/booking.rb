class Booking < ApplicationRecord
  belongs_to :plane
  belongs_to :user
  validates :start_date, presence: true
  validates :approved, inclusion: [true, false] #could also be exclusion: [nil]
end
