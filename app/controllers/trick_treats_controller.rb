class TrickTreatsController < ApplicationController

    def index
        @trick_treats=TrickTreat.all
        render json: @trick_treats
    end


    def show
        @trick_treat=TrickTreat.find(params[:id])
        @name=@trick_treat.name
        render json: @name
     byebug
    end
end

private 
def trick_treat_params
    params.permit(:id)
end