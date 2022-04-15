require 'rails_helper'

RSpec.describe Cruise, type: :model do
  subject do
    @test_user = User.new(
      name: 'Jack',
      email: 'jack@gmail.com'
    )
    @test_cruise = @test_user.cruises.new(
      name: 'Titanic',
      description: 'Lover of the invisible iceberg',
      image: 'https://i2.milimaj.com/i/m
      illiyet/75/0x0/617789a4932151b754e77c19.jpg',
      user_id: @test_user.id
    )
  end
  before { subject.save }

  it 'Validates Provided Subject' do
    expect(subject).to be_valid
  end

  it 'Validates Cruise Name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Validates Cruise Description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'Validates Cruise Image' do
    subject.image = nil
    expect(subject).to_not be_valid
  end

  it 'Should be Associated with the User' do
    expect(subject).to respond_to(:user)
  end
end
