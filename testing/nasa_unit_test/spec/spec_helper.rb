require '../../controllers/api/nasa_api_controller'
require 'sinatra'
require "sinatra/base"
require 'rack/test'

def app
  NasaApiController.new
end

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
