require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?


class NasaApiController < Sinatra::Base
  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '../../')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'


  # Enables the reloader so we dont need to keep restarting the server
  configure :development do
      register Sinatra::Reloader
  end

  # A get request to the / route will respond with our index template with all the posts from the model

  get '/' do
    @today = Time.now.strftime("%Y-%m-%d")
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{@today}&end_date=#{@today}&api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym"
    response = HTTParty.get(url)
    @keys = response.parsed_response

    erb :'nasa/home'

  end

  get '/nasa/lookup' do
    url = "https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym"
    response = HTTParty.get(url)
    @keys = response.parsed_response

    erb :'nasa/lookup'

  end

  get '/nasa/browse' do
    url = "https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym"
    response = HTTParty.get(url)
    @keys = response.parsed_response

    erb :'nasa/browse'

  end

end
