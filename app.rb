require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:results)
end
