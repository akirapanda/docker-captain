require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'
require 'rspec'
require 'rack/test'

require "codeclimate-test-reporter"


ENV['CODECLIMATE_REPO_TOKEN'] = '0fca59f3fbdda7a93a6fb369a199841a4399171505dab657fdc90911ad9539b6'
CodeClimate::TestReporter.start



# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false
require './application'

require File.join(File.dirname(__FILE__), '../application')




RSpec.configure do |c|
  c.mock_with :rspec
  c.include Rack::Test::Methods
end