class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :lastname, presence: true
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "invalid format"}
  end