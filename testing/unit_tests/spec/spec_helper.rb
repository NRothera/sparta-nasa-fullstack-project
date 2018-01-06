require_relative '../../../controllers/api/nasa_api_controller'
require_relative '../../../controllers/delicious_food_controller'
require_relative '../../../models/delicious_food'
require 'sinatra'
require "sinatra/base"
require 'rack/test'
require 'pg'

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
