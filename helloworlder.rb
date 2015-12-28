require 'pry'
require 'twitter'
require_relative './env'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = CONSUMER_KEY
  config.consumer_secret     = CONSUMER_SECRET
  config.access_token        = ACCESS_TOKEN
  config.access_token_secret = ACCESS_TOKEN_SECRET
end

languages = ["مرحبا بالعالم!", "zdravo svijete!", "Здравей, свят!", "Hola, món!", "世界您好！", "zdravo svijete!", "Ahoj světe!", "Hej verden!", "Hallo mensen!"]

client.update(languages.sample)