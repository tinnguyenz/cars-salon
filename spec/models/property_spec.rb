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

  describe "Associations" do
    it { should belong_to(:car).without_validating_presence }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.wheel = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.seat = nil
      expect(subject).to_not be_valid
    end
  end
end

