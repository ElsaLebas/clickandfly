class User < ApplicationRecord
  has_many :planes, dependent: :destroy #dependent: :destroy > deleting a user <=> deleting his planes
  has_many :bookings, through: :planes
  validates :first_name, :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
