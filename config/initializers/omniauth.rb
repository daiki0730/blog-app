Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET_KEY'],info_fields:"nickname, image", request_path: '/auth/twitter', callback_path: '/auth/twitter/callback'

end
