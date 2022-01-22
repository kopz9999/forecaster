require 'uri'
require 'net/http'

class WeatherService
  SERVICE_URL = 'http://api.weatherapi.com/v1/current.json'

  def self.call(postal_code)
    uri = URI("#{SERVICE_URL}?key=#{ENV['WEATHER_API_KEY']}&q=#{postal_code}&aqi=no")
    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
      wresp = JSON.parse res.body
      return wresp['current']['temp_f']
    else
      raise "WeatherServiceError"
    end
  end
end