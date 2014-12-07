OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "8HdqNBbcWFBNMXW4WPY2kA", "lu3it7Y0HNt0Xx6xEHYE2ugGxzdXXclTMTfu8mmiRfc"
end