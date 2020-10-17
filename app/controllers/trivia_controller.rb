class TriviaController < ApplicationController

    def index
        @trivias=Trivia.all
        render json: @trivias
    end

    def show
    end

    def new
    end

    
end
