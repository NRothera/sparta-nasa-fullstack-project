require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/delicious_food.rb'
require_relative './controllers/delicious_food_controller.rb'


run Rack::Cascade.new ([
  DeliciousFoodsController
  ])

use Rack::MethodOverride
