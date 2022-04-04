class Destination < ApplicationRecord
    has_many :reservations

    validates :city, presence: true
    validates :country, presence: true
    validates :image, presence: true
end
