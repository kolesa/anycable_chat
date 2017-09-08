require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AnycableTest
  class Application < Rails::Application
    config.action_cable.disable_request_forgery_protection = true
    config.action_cable.url = "ws://localhost:8080/cable"
    config.action_cable.mount_path = "/cable"
  end
end
