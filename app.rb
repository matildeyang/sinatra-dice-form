require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:layout)
end

get("/process_roll/?dice=:dice_num&sides=:side_num") do
  @rolls = []
  # use the fetch method to get what the user inputs 
  # need to convert it to integer because it comes as a string
  @dice_num = params.fetch("dice_num").to_i
  @side_num = params.fetch("side_num").to_i
  
  @dice_num.times do
    die = rand(1..@side_num)

    @rolls.push(die)
  end

  erb(:flexible)

end 
