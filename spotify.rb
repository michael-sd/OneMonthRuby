# This script uses the RSpotify API. 
# It can be found at: https://github.com/guilhermesad/rspotify

require 'rspotify'

def first_album(artist)
	first_album = RSpotify::Artist.search(artist)
	first_album = artist.first
	albums = artist.albums.first.name
	return "Name of first album: #{albums}"
end

puts first_album("Artic Monkeys")