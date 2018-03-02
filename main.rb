require "sinatra"
require "sinatra/reloader" if development?
#Variables
@fecha = 23
#Routes
get "/" do
  # generar html
  # fecha = Time.now
  #   "Hola :) hoy es: #{fecha}"
  "home"
end


get '/diego' do
  "Página diego"
end

get '/dado/:numero' do
    dado = rand(1..6)
    # dado = 2
   if  params[:numero].to_i == dado
    erb :ganaste
  else
    "El FBI va para tu casa"
  end
end

# get "/:city" do
#   #params[:city]
#   # country = params[:country]
#   # country2 =params[:country2]
#   params.inspects
# end
