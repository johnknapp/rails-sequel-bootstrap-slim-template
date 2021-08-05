require_relative "boot"

# require "rails/all"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SequelBootstrapSlim
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.generators do |g|
      g.template_engine = :slim
    end

     # Allowed options: :sql, :ruby.
     config.sequel.schema_format = :sql

     # Allowed options: true, false, default false
     config.sequel.allow_missing_migration_files = true
 
     # Whether to dump the schema after successful migrations.
     # Defaults to false in production and test, true otherwise.
     config.sequel.schema_dump = true
 
     # These override corresponding settings from the database config.
     config.sequel.max_connections = 16
     config.sequel.search_path = %w(mine public)
 
     # Configure whether database's rake tasks will be loaded or not.
     #
     # If passed a String or Symbol, this will replace the `db:` namespace for
     # the database's Rake tasks.
     #
     # ex: config.sequel.load_database_tasks = :sequel
     #     will results in `rake db:migrate` to become `rake sequel:migrate`
     #
     # Defaults to true
    #  config.sequel.load_database_tasks = false
 
     # This setting disabled the automatic connect after Rails init
     config.sequel.skip_connect = true
 
     # Configure if Sequel should try to 'test' the database connection in order
     # to fail early
     config.sequel.test_connect = true
 
     # If you want to use a specific logger
     config.sequel.logger = Logger.new($stdout)
  end
end
