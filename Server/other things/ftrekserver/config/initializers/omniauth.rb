Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '821187684603303', '2e445f838747500316242d0d39b0cd08'
end