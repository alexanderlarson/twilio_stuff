get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
	puts params.inspect
	redirect '/'
end

# friends.each do |key, value|
#   client.account.messages.create(
#     :from => from,
#     :to => key,
#     :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
#     :media_url => "https://demo.twilio.com/owl.png"
#   ) 
#   puts "Sent message to #{value}"
# end

@account = @client.account
@message = @account.sms.messages.create({:from => '+16123263732', :to => '860-916-7174', :body => 'Hey mate - testing from Twilio.  You\'re special, Alex.'})
puts @message

@client = Twilio::REST::Client.new(@account_sid, @auth_token)

@account_sid = 'ACac44b808ec014b26d91f340c03e410ce'