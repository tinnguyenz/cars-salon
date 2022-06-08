require 'rails_helper'

RSpec.describe Property, type: :model do

  subject { described_class.new(
            car_id: 1,
            wheel: 4, 
            seat: 4, 
            fuel: "electricity", 
            speed: "400km/h", 
            color: "black")  
  }

  describe "New property" do
    it "creates a property" do
      property = Property.new(wheel: 4, seat: 4, fuel: "electricity", speed: "300km/h", color: "yellow")
      expect(subject).to be_valid
      expect(property).to be_valid
    end

    it "creates new car with invalid property" do
      property = Property.new(wheel: 4, fuel: "electricity", speed: "300km/h", color: "yellow")
      expect(subject).to be_valid
      expect(property).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:car).without_validating_presence }
  end

  describe "Validations" do
    it "is valid with attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a wheel" do
      subject.wheel = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a seat" do
      subject.seat = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a speed" do
      subject.speed = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a color" do
      subject.color = nil
      expect(subject).to_not be_valid
    end
  end
end

