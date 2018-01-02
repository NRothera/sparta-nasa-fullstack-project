require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'rack/test'
require 'sinatra/base'
require 'json'
require 'net/http'
require 'http'
require_relative './models/delicious_food.rb'
require_relative 'controllers/delicious_food_controller.rb'
require_relative 'controllers/api/nasa_api_controller.rb'


run Rack::Cascade.new ([
  NasaApiController,
  DeliciousFoodsController

  ])

use Rack::MethodOverride
