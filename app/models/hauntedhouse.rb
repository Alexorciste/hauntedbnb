class Hauntedhouse < ApplicationRecord
  CATEGORY = ["Frightening", "Terrifying", "Chilling", "Blood-curdling", "Deadly"]
  has_many :reviews
  has_many :journeys

  has_one_attached :photo
  validates :category, inclusion: { in: CATEGORY }
end
