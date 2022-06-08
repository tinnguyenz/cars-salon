class Car < ActiveRecord::Base
  has_one :property, :dependent => :destroy

  validates :name, presence: true
  validate :property
end
