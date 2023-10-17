require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Dice Roll</h1>
  "
  <form action="/process_roll">
    <label for="zebra">"Number of dice to roll?"</label>
    <input id="zebra" name="Number of dice to roll?">

    <label for="giraffe">"How many sides per die?"</label>
    <input id="giraffe" name="How many sides per die?">

    <button>Roll</button>
  </form>
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
