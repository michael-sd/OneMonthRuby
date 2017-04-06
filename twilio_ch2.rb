require 'twilio-ruby'
require 'stock_quote'

account_sid = 'ACb204466ecb9c8ee0f6a7f177b909daed'
auth_token = '7ce9d9ecaef634e8dec2be67c8a789d3'

@client = Twilio::REST::Client.new account_sid, auth_token

def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $#{stock_price}"
end

def text(message)
	@client.messages.create(
  		from: '+61476855992',
  		to: '+61424020282',
  		body: message
	)
end


stocks = ["AAPL", "GOOG", "FB"]

stocks.each do |ticker|
	text(stock_price (ticker))
end