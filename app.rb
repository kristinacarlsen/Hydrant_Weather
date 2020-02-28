class App < Sinatra::Base
get '/' do
  erb :index
end

# TODO: Add post method that displays card .erb with API data

options = { units: "metric", APPID: "1111111111" }
OpenWeather::Current.city("Berlin, DE", options)
end