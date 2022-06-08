require 'rails_helper'

RSpec.describe Car, :type => :model do

  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "Volvo"
    subject.wheel = 4
    subject.seat = 4
    subject.fuel = "gasoline"
    subject.speed = "300km/h"
    subject.color = "black"

    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    car = Car.new(name: nil)
    expect(car).to_not be_valid
  end
end