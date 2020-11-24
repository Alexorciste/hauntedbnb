class Hauntedhouse < ApplicationRecord
  CATEGORY = %w(un deux trois quatre cinq)
  has_many :reviews
  has_many :journeys

  has_one_attached :photo
  validates :category, inclusion: { in: CATEGORY }
end
