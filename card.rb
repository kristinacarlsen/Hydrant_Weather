require 'open_weather'
require 'dotenv'
Dotenv.load



class WeatherAPI
    options = { units: "metric", APPID: ENV['WEATHER_API_KEY'] }
    OpenWeather::Current.city("Tucson, AZ", options)
end

newWeather = WeatherAPI.new
puts newWeather