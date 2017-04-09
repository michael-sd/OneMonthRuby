# Here is a script that scrapes a specified search term in Amazon
# and returns the first search result to the web page made in sinatra.

# First we specify the APIs necesseary
require 'mechanize'
require 'sinatra'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


# We then define each page for the sinatra site.
get '/' do
	@greeting = "Amazon Surf"
  	erb :mechapi
end

post '/' do
	@greeting = "Amazon Surf"
	@output = search_form(params[:searchterm])
	erb :mechapi
end

get '/:searchterm' do
	@greeting = "Amazon Surf"
	@output = search_form(params[:searchterm])
	erb :mechapi
end

# Here, we create a method for scraping information and returning the first
# search result in Amazon, using the mechanise API.
# We define a user alias whilst scraping, the web address to scrape,
# we then fill in page forms and submit them to return a search result.
# We then list the result on the web page.
def search_form(searchterm)
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get('https://www.amazon.com/')
search_form = page.form
search_form['field-keywords'] = searchterm
page = search_form.submit
items = page.css('.s-result-item')
items.each do |item|	
return "#{item.css('h2').text}, #{item.css('.s-price').text}"
	end
end