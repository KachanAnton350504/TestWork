require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'sprockets/railtie'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InternetShop
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false
    config.active_record.raise_in_transactional_callbacks = true
    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
    
  end
end

