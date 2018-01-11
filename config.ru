require 'sinatra'
# require 'sinatra/reloader' if development?
require 'pg'
require 'rack/test'
require 'sinatra/base'
require 'json'
require 'net/http'
require 'http'
require_relative './models/ufo'
require_relative 'controllers/ufo_controller'
require_relative 'controllers/api/nasa_api_controller'


run Rack::Cascade.new ([
  NasaApiController,
  UFOController,
  Sinatra::Application
  ])

use Rack::MethodOverride
