require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Askandgo
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
          fixtures: true,
          view_spec: false,
          helper_specs: false,
          routing_specs: false,
          request_specs: false,
          controller_spec: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'

    end
  end
end