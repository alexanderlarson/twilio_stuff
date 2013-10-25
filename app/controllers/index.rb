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

