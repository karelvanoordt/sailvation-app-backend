class User < ApplicationRecord
  has_many :cruises
  has_many :reservations

  validates :name, presence: true
  validates :email, presence: true
end
