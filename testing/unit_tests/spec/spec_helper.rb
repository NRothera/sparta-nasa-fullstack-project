require_relative '../../../controllers/api/nasa_api_controller'
require_relative '../../../controllers/ufo_controller'
require_relative '../../../models/ufo'
require 'sinatra'
require "sinatra/base"
require 'rack/test'
require 'pg'

RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end
