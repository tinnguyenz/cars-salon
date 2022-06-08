class Property < ApplicationRecord
  validates_presence_of :wheel
  validates_presence_of :seat
  validates_presence_of :fuel
  validates_presence_of :speed
  validates_presence_of :color
end
