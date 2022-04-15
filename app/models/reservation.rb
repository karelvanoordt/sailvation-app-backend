class Reservation < ApplicationRecord
  belongs_to :user

  validates :start_date, presence: true
  validates :user_id, presence: true
  validates :cruise_id, presence: true
  validates :destination_id, presence: true
end
