class Car < ActiveRecord::Base
  has_one :property

  validates :name, presence: true
end
