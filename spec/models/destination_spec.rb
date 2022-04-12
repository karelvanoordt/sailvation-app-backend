require 'rails_helper'

RSpec.describe Destination, type: :model do
  subject do
    Destination.new(country: 'Italy', city:'Sorrento', image: 'sorrento.png')
  end

  before { subject.save }

  it 'validates that country is not nil' do
    subject.country = nil
    expect(subject).to_not be_valid
  end

  it 'validates that city should not be empty' do
    subject.city = ''
    expect(subject).to_not be_valid
  end

  it 'validates that all 3 fields are met' do
    subject.country = 'Peru'
    subject.city = 'Lima'
    subject.image = 'Peru.png'
    expect(subject).to be_valid
  end
end
