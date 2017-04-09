# This script writes a Sinatra app that allows a user to look up the
# weather and temperature.

# First we specify which API's we require for the app
require 'sinatra'
require 'forecast_io'
require 'geocoder'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# We then specify the API key.
ForecastIO.api_key = '15e411a60ba9e97f3e0c6ec0c99153a9'

# Here we define each page for the sinatra site.
get '/' do
	@greeting = "Forecast Report"
  	erb :forecast_index
end

post '/' do
	@greeting = "Forecast Report"
	@output = current_forecast(params[:location])
	erb :forecast_index
end

get '/:location' do
	@greeting = "Forecast Report"
	@output = current_forecast(params[:location])
	erb :forecast_index
end


# Here we define a method for linking the user input to a geographic location
# and forecast reading.
# We then return the reading based on the input location coinciding with
# the Geocoder API.
# If the input location doesn't match anything on the Geocoder API database,
# we use a else argument to state that the location cannot be found.
def current_forecast(location)
	if coordinates = Geocoder.coordinates(location)
		forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
		return "#{forecast.summary} and #{forecast.temperature} in #{location}"
	else
		return "Location not found"
	end
end