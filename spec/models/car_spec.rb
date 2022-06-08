require 'rails_helper'

RSpec.describe Car, :type => :model do

  subject { 
    described_class.new(
      name: "BMW",
      property: Property.new(wheel: 4, seat: 4, fuel: "electricity", speed: "300km/h", color: "yellow") 
    )
  }

  describe "New car" do
    it "creates new car with valid property" do
      property = Property.new(wheel: 4, seat: 4, fuel: "electricity", speed: "300km/h", color: "yellow")
      car = Car.new(name: "BMW", property: property)
      expect(subject).to be_valid
      expect(property).to be_valid
    end

    it "creates new car with invalid property" do
      property = Property.new(wheel: 4, fuel: "electricity", speed: "300km/h", color: "yellow")
      car = Car.new(name: "BMW", property: property)
      expect(subject).to be_valid
      expect(property).to_not be_valid
    end
  end

  describe "Associations" do
    it { should have_one(:property).without_validating_presence }
  end

  it "is valid with valid attributes" do
    subject.name = "Volvo"
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    car = Car.new(name: nil)
    expect(car).to_not be_valid
  end

end