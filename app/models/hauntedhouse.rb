class Hauntedhouse < ApplicationRecord
  has_many :reviews
  has_many :journeys
  has_one_attached :photo
end
