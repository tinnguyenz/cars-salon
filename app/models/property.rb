class Property < ApplicationRecord
  belongs_to :car, optional: true
  validates_presence_of :wheel, :seat, :fuel, :speed, :color
end
