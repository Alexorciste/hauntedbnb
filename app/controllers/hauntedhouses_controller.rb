class HauntedhousesController < ApplicationController

  before_action :set_hauntedhouse, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @hauntedhouses = Hauntedhouse.all
  end

  def new
      @hauntedhouse = Hauntedhouse.new
      
  end

  

  def create
    @hauntedhouse = Hauntedhouse.new(hauntedhouse_params)
    @hauntedhouse.user = current_user
    
    if @hauntedhouse.save
      redirect_to hauntedhouses_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @hauntedhouse = Hauntedhouse.find(params[:id])
    @hauntedhouse.update(hauntedhouse_params)
    redirect_to hauntedhouse_path(@hauntedhouse)
    
  end

  def destroy
    @hauntedhouse.destroy
    redirect_to hauntedhouses_path
    
  end
  


private
  def hauntedhouse_params
    params.require(:hauntedhouse).permit(:name, :description, :category, :address, :city, :country, :price_per_night, :photo)
  end

  def set_hauntedhouse
    @hauntedhouse = Hauntedhouse.find(params[:id])
    
  end
end
