require "bundler/setup"
require "rulers"
require 'rack/test'
require 'pry'

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Rack::Test::Methods
end
