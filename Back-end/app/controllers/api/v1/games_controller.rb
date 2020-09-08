class Api::V1::GamesController < ApplicationController
    def index 
        games = Game.all 
        render json: Api::V1::GameSerializer.new(games)
    end

    def show
        game = Game.find_by(id: params[:id])
        render json: Api::V1::GameSerializer.new(game)
    end

    def create
        game = Game.create(game_params)
        if
          game.save
          render json: Api::V1::GameSerializer.new(game)
        else
          render json: game.errors
          # { errors: @game.errors.full_messages }, status: :unprocessible_entity
        end
      end
end

private 

    def game_params
        params.permit(:game_id)
    end