require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsGuideBlog
  class Application < Rails::Application
    # rails generate のときに slim ファイルが作られるようになる
    config.generators.template_engine = :slimbundle
  end
end
