class Destination < ApplicationRecord
  validates :city, presence: true
  validates :country, presence: true
  validates :image, presence: true
end
