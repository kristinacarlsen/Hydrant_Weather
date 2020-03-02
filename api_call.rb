require 'open_weather'
require 'dotenv'
Dotenv.load

#TODO: Figure out correct syntax for API call

# class WeatherAPI
#     options = { units: "metric", APPID: ENV['WEATHER_API_KEY'] }
#     OpenWeather::Current.city("Tucson, AZ", options)
# end

# newWeather = WeatherAPI.new
# puts newWeather


require 'net/http'

def results
    results = Net::HTTP.get('http://api.openweathermap.org/data/2.5/weather?q=85719&APPID=#{ENV['WEATHER_API_KEY']}&units=imperial')

end

puts results