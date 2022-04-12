require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Karel', email: 'karel@gmail.com')
  end

  before { subject.save }

  it 'validates is name is not nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'validates that name is not empty' do
    subject.name = ''
    expect(subject).to_not be_valid
  end

  it 'validates the name' do
    subject.name = 'Karel'
    expect(subject).to be_valid
  end

  it 'validates email' do
    subject.email = 'karel@gmail.com'
    expect(subject).to be_valid
  end
end
