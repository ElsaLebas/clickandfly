class Plane < ApplicationRecord
  CAPACITIES = ["1", "2", "3", "4", "5-6", "7-9", "10+"]
  has_many :bookings, dependent: :destroy #dependent: :destroy > deleting a plane <=> deleting the bookings
  belongs_to :user
  validates :plane_name, :location, presence: true
  validates :plane_type, inclusion: { in: ["single-engined", "twin-engined"] }
  validates :capacity, inclusion: { in: CAPACITIES }
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  validates :available, inclusion: [true, false] #could also be exclusion: [nil]
end
