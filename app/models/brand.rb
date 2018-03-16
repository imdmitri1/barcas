class Brand < ApplicationRecord
  has_many :boats
  has_many :types, through: :boats
  # has_one :picture
end
