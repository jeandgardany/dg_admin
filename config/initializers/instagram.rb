#require "sinatra"
require "instagram"

#enable :sessions

CALLBACK_URL = "http://localhost:4567/oauth/callback"

Instagram.configure do |config|
  config.client_id = "167808964537649"
  config.client_secret = "9f1f9a3b6c6b937250cc3f6c36b09ab7"
  config.access_token = "IGQVJWcEhrdi1SeGh2TEw0WjJaNVlQcy1fM0gxZAnVkTGxTVTUtaHNiZAWFKQTNVb3lqTl9TYXZAuWThSQ0dvUW9ZAWmRTUnIxWk1GNzRELTQ3NjVuc09NOFBKc1hxRUFfb2FFdmhzS1BhMU9GN2ppTk96VAZDZD"
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end

