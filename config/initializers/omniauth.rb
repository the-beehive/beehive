Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['BEEHIVE_TWITTER_KEY'], ENV['BEEHIVE_TWITTER_SECRET']
  provider :facebook, ENV['BEEHIVE_FACEBOOK_KEY'], ENV['BEEHIVE_FACEBOOK_SECRET']
  #provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
end
