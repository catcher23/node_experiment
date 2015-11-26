require "instagram"

  Instagram.configure do |config|

  config.client_id ="2c04323492b04a19b6cce5f61025304a"

  config.access_token =ENV["SECRET TOKEN"]

end

# https://instagram.com/oauth/authorize/?client_id=2c04323492b04a19b6cce5f61025304a&redirect_uri=http://localhost:3000&response_type=token
