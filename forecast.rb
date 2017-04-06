require 'forecast_io'
require 'geocoder'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
# An api key is generated through the host application site, usually in the developer section.
# It is quoted within '' in the piece of code below.
ForecastIO.api_key = '15e411a60ba9e97f3e0c6ec0c99153a9'

def current_forecast(location)
	if coordinates = Geocoder.coordinates(location)
		forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
		return "#{forecast.summary} and #{forecast.temperature} in #{location}"
	else
		return "Location not found"
	end
end

puts current_forecast("Southport, Goldcoast")

# require 'pp'   ---'pp' stands for pretty print