require_relative 'boot'

require 'rails/all'
require 'rails/commands'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Central Time (US & Canada)'
    config.active_record.schema_format = :ruby
    config.after_initialize do
      ActionView::Base.sanitized_allowed_tags.delete 'div'
    end
    config.console do
      # this block is called only when running console,
      # so we can safely require pry here
      require "pry"
      config.console = Pry
    end
  end
end


