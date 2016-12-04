require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wedding
  class Application < Rails::Application
    config.from_email = 'noreply@fonswedding.com'
    config.notify_email = 'derek@farfromrest.com'
  end
end
