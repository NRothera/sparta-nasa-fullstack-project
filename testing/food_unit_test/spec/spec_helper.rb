require '../../controllers/delicious_food_controller'
require 'sinatra'
require "sinatra/base"
require 'rack/test'

def app
  DeliciousFoodsController.new
end

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
