class TriviaController < ApplicationController

    def index
     
        @house=HauntedHouse.find_by(id: params[:haunted_house_id])

        @trivias=Trivia.all
        @sortedTrivia=[]
        @trivias.each do |trivia|
         
         if trivia.haunted_house_id===@house.id
                @sortedTrivia << trivia
            end
         
        end
        
        render json: @sortedTrivia
    end

    def show
    end

    def new
    end

    
end
