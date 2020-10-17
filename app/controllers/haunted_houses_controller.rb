class HauntedHousesController < ApplicationController

    def index
        @houses=HauntedHouse.all
        render json: @houses
    end
end
