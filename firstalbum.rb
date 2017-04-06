require 'rspotify'
require 'twilio-ruby'

account_sid = 'ACb204466ecb9c8ee0f6a7f177b909daed'
auth_token = '7ce9d9ecaef634e8dec2be67c8a789d3'

@client = Twilio::REST::Client.new account_sid, auth_token

def artists(artist_name)
	artists = RSpotify::Artist.search(artist_name)
	latest_album = artists.first
	albums = latest_album.albums
	return "#{albums.first.name}"
end

def text(message)
	@client.messages.create(
  		from: '+61476855992',
  		to: '+61424020282',
  		body: message
	)
end

text(artists("Linkin Park"))