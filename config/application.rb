require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TesteVagaSepog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Configuração de linguagem da gem Devise
    config.i18n.default_locale = :'pt-BR' 

    # Envio de e-mails do Devise
    config.action_mailer.delivery_method = :smtp
      ActionMailer::Base.smtp_settings = {
      address: "smtp.gmail.com",
      enable_starttls_auto: true,
      port: 587,
      authentication: :plain,
      user_name: ENV["gabrie.sepog@gmail.com"],
      password: ENV["asadeltatuf"],
      openssl_verify_mode: 'none'
    }
  end
end
