class ScoresController < ApplicationController
    def index 
        scores = Score.all 
        render json: ScoreSerializer.new(scores)
    end

    def show 
        score = Score.find_by(params[:id])
        options = {
            include: [:player, :game]
        }
        render json: ScoreSerializer.new(score, options)
    end
end
