class PlayersController < ApplicationController
    def index 
        players = Player.all 
        render json: players.to_json(only: :name)
    end


    def show
        player = Player.find_by(id: params[:id])
        if player
        render json: player.to_json
        else
            render json: { message: 'Player not found' } 
        end
    end

    # def new
    #     @player = Player.new
    # end

    def create
        player = Player.create(player_params)

        if player.valid?
            player.save
            render json: @player, status: accepted
        end

    end

    def delete
        player = Player.find_by(id: params[:id])
        player.destroy
        render json: player
    end

    private
    def player_params
        params.require(:player).permit(:name)
      end

end
