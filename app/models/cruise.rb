class Cruise < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :description, :image, presence: true
  validates :daily_price, numericality: { greater_than: 0, less_than: 1000000 }
end
