# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDBLUE_LOGIN'],
  :password => ENV['SENDBLUE_PWD'],
  :domain => 'https://backend-expatrirate.herokuapp.com/',
  :address => 'smtp-relay.sendinblue.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
