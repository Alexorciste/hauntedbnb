class Hauntedhouse < ApplicationRecord
  CATEGORY = %w(un deux trois quatre cinq)
  has_many :reviews
  has_many :journeys

  validates :category, inclusion: { in: CATEGORY }
end
