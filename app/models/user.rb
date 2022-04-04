class User < ApplicationRecord
    has_many :cruises
    has_many :reservations
end