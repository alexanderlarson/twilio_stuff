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
  # binding.pry
  account_sid = ""
  auth_token = ""

  @client = Twilio::REST::Client.new account_sid, auth_token

  # binding.pry
  params[:phone].each do |key, value|
    if value != ""
      @client.account.messages.create(:from => "16306570372", :to => value, :body => params[:message])
    end
  end
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

