# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
players = Player.create([{name: Faker::Name.unique.name}])
end

10.times do 
    games = Game.create
end

Score.create(score:rand(100..1000), player_id: 1, game_id: 1 )
Score.create(score:rand(100..1000), player_id: 2, game_id: 2 )
Score.create(score:rand(100..1000), player_id: 3, game_id: 3 )
Score.create(score:rand(100..1000), player_id: 4, game_id: 4 )
Score.create(score:rand(100..1000), player_id: 5, game_id: 5 )
Score.create(score:rand(100..1000), player_id: 6, game_id: 6 )
Score.create(score:rand(100..1000), player_id: 7, game_id: 7 )
Score.create(score:rand(100..1000), player_id: 8, game_id: 8 )
Score.create(score:rand(100..1000), player_id: 9, game_id: 9 )
Score.create(score:rand(100..1000), player_id: 10, game_id: 10 )
