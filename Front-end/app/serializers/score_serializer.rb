class ScoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score
  belongs_to :game
  belongs_to :player 
end
