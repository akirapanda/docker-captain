require 'docker'
require 'sinatra'
require 'grape'

class API < Grape::API
	version 'v1'
	format :json
	prefix :api



  get "/" do
    { message: 'Hello Captain!' }
  end
end


class Web < Sinatra::Base
  get '/' do
    'Hello Captain!'
  end
end