require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @num_side = params.fetch("sides").to_i
  @rolls = []

  @num_dice.times do
    die = rand(1..@num_side)
    @rolls.push(die)
  end

  erb(:flexible)
end
