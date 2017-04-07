require 'mechanize'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

agent = Mechanize.new

page = agent.get('http://google.com/')

page.links.each do |link|
	puts link.text
end