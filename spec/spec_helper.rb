require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'

  require 'capybara'
  require 'capybara/rspec'
  require 'rspec'
  require_relative "../app"
  require_relative 'features/web_helpers.rb'
  
  Capybara.app = RockPaperScissors

end
