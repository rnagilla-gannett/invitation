# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Invitation::Application.initialize!
# ActionMailer::Base.smtp_settings = {
#   :address        => 'smtp.sendgrid.net',
#   :port           => '587',
#   :authentication => :plain,
#   :user_name      => ENV['SENDGRID_USERNAME'],
#   :password       => ENV['SENDGRID_PASSWORD'],
#   :domain         => 'heroku.com',
#   :enable_starttls_auto => true
# }

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "supriyaandrakesh",
  :password             => "August25th2013",
  :authentication       => "plain",
  :enable_starttls_auto => true
}