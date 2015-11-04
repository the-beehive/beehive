Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['BEEHIVE_TWITTER_KEY'], ENV['BEEHIVE_TWITTER_SECRET']
  provider :facebook, ENV['BEEHIVE_FACEBOOK_KEY'], ENV['BEEHIVE_FACEBOOK_SECRET']
end
