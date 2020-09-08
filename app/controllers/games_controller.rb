class GamesController < ApplicationController
    def index 
        games = Game.all 
        render json: games
    end

    def show
        game = Game.find_by(id: params[:id])
        render json: game
    end

    def create
        game = Game.new(game_params)
        if game.valid?
          game.save
          render json: game, status: :accepted
        else
          render json: game.errors
          # { errors: @game.errors.full_messages }, status: :unprocessible_entity
        end
      end
end

private 

    def game_params
        params.require(:game).permit()
    end