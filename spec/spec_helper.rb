require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'
require 'rspec'
require 'rack/test'

require "codeclimate-test-reporter"

# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false
require './application'

require File.join(File.dirname(__FILE__), '../application')

CodeClimate::TestReporter.start

RSpec.configure do |c|
  c.mock_with :rspec
  c.include Rack::Test::Methods
end