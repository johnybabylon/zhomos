# Load the Rails application.
require File.expand_path('../application', __FILE__)


# Load the app's custom environment variables here, before environments/*.rb
email_password = File.join(Rails.root, 'config', 'initializers', 'email_password.rb')
load(email_password) if File.exists?(email_password)


# Initialize the Rails application.
Rails.application.initialize!
