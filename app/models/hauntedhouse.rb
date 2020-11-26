class Hauntedhouse < ApplicationRecord
  CATEGORY = ["Frightening", "Terrifying", "Chilling", "Blood-curdling", "Deadly"]
  has_many :reviews
  has_many :journeys

  has_one_attached :photo
  validates :category, inclusion: { in: CATEGORY }
  
  include PgSearch::Model
  pg_search_scope :search_by_all,
    against: [ :name, :description, :category, :address, :city, :country ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  
  def reserved?
    @journeys = self.journeys
    if @journeys.count > 0
      @journeys.each do |journey|
        return journey.checkin > Date.today
      end
    end
  end

  def visited?
    @journeys = self.journeys
    if @journeys.count > 0
      @journeys.each do |journey|
        return journey.checkout < Date.today
      end
    end
  end

   def running?
    @journeys = self.journeys
    if @journeys.count > 0
      @journeys.each do |journey|
        return journey.checkin < Date.today && journey.checkout > Date.today
      end
    end
  end

end
