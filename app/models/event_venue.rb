class EventVenue < ApplicationRecord
  has_many :events
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, numericality: { only_integer: true,message: "debe ser un numero"}
  validates :capacity, numericality: { greater_than_or_equal_to: 10,message: "la capacidad debe ser mayor o igual a 10"}
end
