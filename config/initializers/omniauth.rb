Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end