require 'spec_helper'
describe API do
  include Rack::Test::Methods

  def app
    API
  end

  describe 'GET /api/v1/' do
    it 'show Hello Captain' do
      get '/api/v1/'
      expect(last_response.status).to eq(200)
      expect(JSON.parse(last_response.body)['message']).to eq('Hello Captain!')
    end
  end
end