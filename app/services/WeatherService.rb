require 'uri'
require 'net/http'

class WeatherService
  SERVICE_URL = 'http://api.weatherapi.com/v1/current.json'
  include Singleton

  def call(postal_code)
    Rails.cache.fetch("weather_codes_#{postal_code}", expires_in: 30.minutes) do
      do_call postal_code
    end
  end

  private

  def do_call(postal_code)
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