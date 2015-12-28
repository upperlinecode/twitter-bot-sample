require 'pry'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "9zMFVhdRheN0HsIYJR3l1jKkb"
  config.consumer_secret     = "pa0DU7IZ3Jq0wNdzxCKj8BzJWOPKv3C46SDhlhc7LFD6kPWz6N"
  config.access_token        = "4634713395-wfagsUpPG1FHa9oFG8SiN5aguyT4Ig0qDTDgsia"
  config.access_token_secret = "Ph05UNpsTlFIQ2PxjPhY7TSSQAAUfmvg7ixumsdjuMTuf"
end

languages = ["مرحبا بالعالم!", "zdravo svijete!", "Здравей, свят!", "Hola, món!", "世界您好！", "zdravo svijete!", "Ahoj světe!", "Hej verden!", "Hallo mensen!"]

client.update(languages.sample)