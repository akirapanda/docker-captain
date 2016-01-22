require "#{File.dirname(__FILE__)}/spec_helper"

describe 'main application' do
  include Rack::Test::Methods

  def app
    Sinatra::Application.new
  end

  it 'show hello world' do
    get '/'
    expect(last_response.body).to eq "Hello World"
  end

end