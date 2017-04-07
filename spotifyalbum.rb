# This script uses the RSpotify API. 
# It can be found at: https://github.com/guilhermesad/rspotify
# It also uses the Twilio API
# Found here: https://github.com/twilio/twilio-ruby

# The aim of the app was to use the spotify library to specify the latest
# artist album they have available on their app. From there, a text message
# is send via twilio informing you of what the album is.

# Here we specify in the script that we are utilising RSpotify and Twilio
require 'rspotify'
require 'twilio-ruby'

# The data below states the account SID and API key for twilio,
# it is individual to each user (as you already know)
account_sid = 'ACb204466ecb9c8ee0f6a7f177b909daed'
auth_token = '7ce9d9ecaef634e8dec2be67c8a789d3'


# This piece of code sets up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# Here we define the method for pulling album information from RSpotify
# We ask it to return the latest available album in the spotify library
def artists(artist_name)
	artists = RSpotify::Artist.search(artist_name)
	latest_album = artists.first
	albums = latest_album.albums
	return "#{albums.first.name}"
end

# Upon pulling the required information, this piece of code directs that
# information to the specified mobile number.
def text(message)
	@client.messages.create(
  		from: '+61476855992', #Change this number to your twilio number y0
  		to: '+61424020282',	# This my number dawwwg..change to your mob number.
  		body: message
	)
end

# Here we command to send the text message, linking both the methods together
# and inputting the desired artist to search available album information on.
text(artists("Jay Z"))


# Note: Spotify doesn't have the latest artist albums available (bo00o0o!)
# the information this script provides is the latest available with regards to
# their libraries.

# Improvements and Future considerations:

# I feel that the method for pulling information from spotify can be shorter
# and more efficient, if it can be better would you be able to
# reccommend how please?

# I initially really wanted a link to the album to be texted along with the
# already provided information, however, the piece of code that generated
# the link didn't provide one that worked (.preview_url). this is something
# I'll be playing about with a bit more in the future.