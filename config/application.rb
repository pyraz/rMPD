require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Rmpd
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.precomplie << /^((.*?)\/)?(?!_)[^\/]*$/

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Sass configuration
    config.sass.preferred_syntax = :sass

  end
end
