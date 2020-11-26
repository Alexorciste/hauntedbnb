class HauntedhousesController < ApplicationController

  before_action :set_hauntedhouse, only: [:show, :edit, :update, :create]

  def index
    if params[:query].present?
      @hauntedhouses = Hauntedhouse.search_by_all(params[:query])
    else
       @hauntedhouses = Hauntedhouse.all
    end
  end

  def new
      @hauntedhouse = Hauntedhouse.new
  end

  def show
  end

  def create
    @hauntedhouse = Hauntedhouse.new(hauntedhouse_params)
    if @hauntedhouse.save
      redirect_to hauntedhouses_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @hauntedhouse = Hauntedhouse.find(params[:id])
    @hauntedhouse.update(hauntedhouse_params)
    redirect_to hauntedhouse_path(@hauntedhouse)
  end

private
  def hauntedhouse_params
    params.require(:hauntedhouse).permit(:name, :description, :category, :address, :city, :country, :price_per_night, :photo)
  end

  def set_hauntedhouse
    @hauntedhouse = Hauntedhouse.find(params[:id])
  end
end
