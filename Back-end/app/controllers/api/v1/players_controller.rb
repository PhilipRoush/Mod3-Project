class Api::V1::PlayersController < ApplicationController
    def index 
        players = Player.all 
        render json: Api::V1::PlayerSerializer.new(players)
    end


    def show
        player = Player.find_by(id: params[:id])
        if player
        render json: Api::V1::PlayerSerializer.new(player)
        else
            render json: { message: 'Player not found' } 
        end
    end

    def new
        player = Player.new
    end

    def create
        player = Player.create(player_params)

        if 
            player.save
            render json: Api::V1::PlayerSerializer.new(player)
        end

    end

    def delete
        player = Player.find(id: params[:id])
        player.destroy
        render Api::V1::PlayerSerializer.new(player)
    end

    private
    def player_params
        params.require(:player).permit(:name)
      end

end
