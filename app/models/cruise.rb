class Cruise < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :description, :image, presence: true
end
