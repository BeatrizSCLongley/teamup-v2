require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TeamupV2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # config.action_mailer.delivery_method = :postmark
    # config.action_mailer.postmark_settings = { api_token: Rails.application.credentials.postmark_api_token }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              'smtp.postmarkapp.com',
      port:                 2525, # ports available 25, 2525, 587
      domain:               'www.teamup.inc',
      user_name:            Rails.application.secrets.postmark_api_token,
      password:             Rails.application.secrets.postmark_api_token,
      authentication:       :tls, # :cram_md5 :tls :plain
      enable_starttls_auto: true
    }
  end
end
