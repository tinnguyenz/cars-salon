class Car < ActiveRecord::Base
  has_one :property
  validates_presence_of :name
end
