class Type < ApplicationRecord::Base
  has_many :boats
  has_many :brands, through: :boats
  # has_one :picture
end
