# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Marketplace::Application.initialize!

unless Rails.env.production?
  credentials = YAML.load_file("#{Rails.root}/config/credentials.yml")
  ENV['IN_API_KEY'] = credentials['in_api_key']
end
