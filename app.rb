require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:layout)
end
