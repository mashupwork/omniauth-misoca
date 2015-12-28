Rails.application.config.middleware.use OmniAuth::Builder do
  provider :misoca, ENV['MISOCA_CLIENT_ID'], ENV['MISOCA_CLIENT_SECRET'], client_options: { site: ENV['MISOCA_SITE'], }
end
OmniAuth.config.logger = Rails.logger

