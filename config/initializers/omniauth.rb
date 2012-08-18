OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "OKFyfNHLcwpqx5I91Qkvgg", "XA1ramUNLoj9iuJNJdJZXIyr9kqnlcEPi2LUYHoRtks"
  # provider :twitter, ENV['SNIPLY_TWITTER_KEY'], ENV['SNIPLY_TWITTER_SECRET']
end