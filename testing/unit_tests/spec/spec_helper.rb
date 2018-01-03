require '../../controllers/api/nasa_api_controller'
require '../../controllers/delicious_food_controller'
require 'sinatra'
require "sinatra/base"
require 'rack/test'

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
