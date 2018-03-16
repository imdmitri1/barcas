class Boat < ApplicationRecord
  # has_many :pictures
  belongs_to :brand
  belongs_to :type
end
