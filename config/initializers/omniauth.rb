Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['5f483bf8aa3ea51927b4'], ENV['5490a39df4cf0c317ea8a842d837829a6ab5fbce']
end