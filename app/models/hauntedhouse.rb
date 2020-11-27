class Hauntedhouse < ApplicationRecord
  CATEGORY = ["Frightening", "Terrifying", "Chilling", "Blood-curdling", "Deadly"]
  has_many :reviews
  has_many :journeys
  belongs_to :user

  has_one_attached :photo
  validates :category, inclusion: { in: CATEGORY }

  include PgSearch::Model
  pg_search_scope :search_by_all,
    against: [ :name, :description, :category, :address, :city, :country ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def reserved?(actuel_user)
    @journeys = self.journeys
    res = false
    if @journeys.count > 0
      @journeys.each do |journey|
        if journey.user == actuel_user
           res = journey.checkin > Date.today
        end
      end
    end
    return res
  end

end
