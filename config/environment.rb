# Load the Rails application.
require_relative 'application'
config.action_mailer.default_url_options = { :host => 'zapserver.herokuapp.com' }
# Initialize the Rails application.
Rails.application.initialize!
