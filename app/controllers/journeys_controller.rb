class JourneysController < ApplicationController
  def new
    @journey = Journey.new
    @hauntedhouse = Hauntedhouse.find(params[:hauntedhouse_id])
  end

  def create
    @hauntedhouse = Hauntedhouse.find(params[:hauntedhouse_id])
    @journey = Journey.new(journey_params)

    @journey.hauntedhouse = @hauntedhouse

    yin = params[:journey]["checkin(1i)"].to_i
    min = params[:journey]["checkin(2i)"].to_i
    din = params[:journey]["checkin(3i)"].to_i

    @journey.checkin = Date.new(yin,min,din)

    yout = params[:journey]["checkout(1i)"].to_i
    mout = params[:journey]["checkout(2i)"].to_i
    dout = params[:journey]["checkout(3i)"].to_i

    @journey.checkout = Date.new(yout,mout,dout)

    days = @journey.checkout - @journey.checkin

    p = @hauntedhouse.price_per_night

    @journey.price = days * p

    @journey.user = current_user

    if @journey.save!
      redirect_to hauntedhouse_path(@hauntedhouse)
    else
      @journey = Journey.new
      render :new
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
