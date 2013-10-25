require 'pry'


# get '/stylesheets/:name.css' do
#   content_type 'text/css', :charset => 'utf-8'
#   scss(:"stylesheets/#{params[:name]}" )
# end

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  account_sid = "AC2a14300af31eaecd5c1d96bb4b5058f2"
  auth_token = "a19559a0005f6389cc3b7ed1b76658d1"

  @client = Twilio::REST::Client.new account_sid, auth_token

  # binding.pry

  @client.account.messages.create(:from => "16306570372", :to => params[:to], :body => params[:message])

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

