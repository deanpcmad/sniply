OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['SNIPLY_TWITTER_KEY'], ENV['SNIPLY_TWITTER_SECRET']
end