#require "sinatra"
require "instagram"

#enable :sessions

CALLBACK_URL = "http://localhost:4567/oauth/callback"

Instagram.configure do |config|
  config.client_id = "167808964537649"
  config.client_secret = "9f1f9a3b6c6b937250cc3f6c36b09ab7"
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end

