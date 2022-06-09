class Car < ActiveRecord::Base
  has_one :property, autosave: true

  validates :name, presence: true
end
