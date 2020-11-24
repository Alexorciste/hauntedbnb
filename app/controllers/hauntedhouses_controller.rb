class HauntedhousesController < ApplicationController
       
    before_action :set_hauntedhouse, only: [:show]
    
    def index
         @hauntedhouses = Hauntedhouse.all
    end
   
    def new
        @hauntedhouse = Hauntedhouse.new
    end
    # ​  
    def show
        
    end
    # ​
       def create
         @hauntedhouse = Hauntedhouse.new(hauntedhouse_params)
         if @hauntedhouse.save
           redirect_to hauntedhouses_path
         else
          render :new
        end
       end

private
    def hauntedhouse_params
        params.require(:hauntedhouse).permit(:name, :description, :category, :address, :city, :country, :price_per_night)
    end

    def set_hauntedhouse
        @hauntedhouse = Hauntedhouse.find(params[:id])
    end

end
