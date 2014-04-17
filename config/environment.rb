# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
R4STechs::Application.initialize!
config.action_mailer.default_url_options = { :host => 'whispering-headland-7216.heroku.com' }