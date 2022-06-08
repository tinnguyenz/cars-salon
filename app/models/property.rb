class Property < ActiveRecord::Base
  belongs_to :car, required: true

  validates :wheel, presence: true
  validates :seat, presence: true
  validates :fuel, presence: true
  validates :speed, presence: true
  validates :color, presence: true
end
