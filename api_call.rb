require 'open_weather'
require 'dotenv'
Dotenv.load

#TODO: Figure out correct syntax for API call

class WeatherAPI
    options = { units: "metric", APPID: ENV['WEATHER_API_KEY'] }
    OpenWeather::Current.city("Tucson, AZ", options)
end

newWeather = WeatherAPI.new
puts newWeather