class TicketType < ApplicationRecord
  belongs_to :event
  validates :ticket_price, numericality: {greater_than_or_equal_to: 0,message: " tiene que se un numero mayor o igual a 0"}
end
