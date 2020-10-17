class TrickTreatsController < ApplicationController

    def index
        @trick_treats=TrickTreat.all
        render json: @trick_treats
    end
end
