class Api::V1::ScoresController < ApplicationController
    def index 
        scores = Score.all 
        render json: Api::V1::ScoreSerializer.new(scores)
    end

    def show 
        score = Score.find_by(params[:id])
        options = {
            include: [:player, :game]
        }
        render json: Api::V1::ScoreSerializer.new(score, options)
    end
end
