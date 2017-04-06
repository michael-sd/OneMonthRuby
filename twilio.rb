require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACb204466ecb9c8ee0f6a7f177b909daed'
auth_token = '7ce9d9ecaef634e8dec2be67c8a789d3'

# set up a client to talk to the Twilio REST API
client = Twilio::REST::Client.new account_sid, auth_token

client.messages.create(
  from: '+61476855992',
  to: '+61424020282',
  body: 'Lets go and get some food'
)