require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FortuneTellerBot
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.generators do |g|
      g.assets false
      g.channel assets: false
      g.controller_specs false
      g.factory_bot true
      g.fixture_replacement :factory_bot, dir: "spec/factories"
      g.helper false
      g.helper_specs false
      g.stylesheets false
      # g.system_tests false
      g.view_specs false
      g.test_framework :rspec
    end

    config.paths.add "services", eager_load: true
    config.generators.system_tests = nil
  end
end
