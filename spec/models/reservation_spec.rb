require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject do
    @user = User.new(name: 'Karel', email: 'karel@gmail.com')
    @cruise = Cruise.new(name: 'Karel Cruise', description: 'This is Karel Cruise',
                         image: 'KCruise.png', user_id: 1)
    @destination = Destination.new(country: 'Peru', city: 'Lima', image: 'peru.png',
                                   departure_city: 'Lima', days: 5, price: 139)
    @reservation = Reservation.new(start_date: '2020-08-10', user_id: 1, cruise_id: 1, destination_id: 1)
  end

  before { subject.save }

  it 'validates that the start date is not nil' do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it 'validates that the start date is not empty' do
    subject.start_date = ''
    expect(subject).to_not be_valid
  end
end
