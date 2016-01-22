require "spec_helper"

describe 'main application' do
  include Rack::Test::Methods

  def app
    Web
  end
  describe 'GET /' do
  	it 'show Hello Captain' do
  	  get '/'
  	  expect(last_response.body).to eq "Hello Captain!"
  	end
  end
end