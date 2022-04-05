class Destination < ApplicationRecord
  belongs_to :reservation

  validates :city, presence: true
  validates :country, presence: true
  validates :image, presence: true
end
