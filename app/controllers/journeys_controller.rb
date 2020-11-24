class JourneysController < ApplicationController
  def new
    @journey = Journey.new
    @hauntedhouse = Hauntedhouse.find(params[:hauntedhouse_id])
  end

  def create
    @hauntedhouse = Hauntedhouse.find(params[:hauntedhouse_id])
    @journey = Journey.new(journey_params)
    @journey.hauntedhouse = @hauntedhouse
    if @journey.save
      redirect_to hauntedhouse_path(@hauntedhouse)
    else
      @journey = Journey.new
      render "hauntedhouses/show"
    end
  end

  def update
  end

  def edit
  end

  private

  def journey_params
    params.require(:journey).permit(:checkin, :checkout, :price)
  end
end
