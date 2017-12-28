require 'httparty'
require 'json'

class NasaApiController < Sinatra::Base
  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'


  # Enables the reloader so we dont need to keep restarting the server
  configure :development do
      register Sinatra::Reloader
  end

  # A get request to the / route will respond with our index template with all the posts from the model
  get "/nasa/homepage" do
    # render our index page

  end

  get '/nasa/feed' do
    nasa_feed_array = []
    @nasa_feed = HTTP.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").to_s

  end

  get '/nasa/lookup' do
    @nasa_lookup = HTTP.get("https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").to_s
    p @nasa_lookup
  end

  get '/nasa/browse' do
    @nasa_browse = HTTP.get("https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").to_s
    p @nasa_browse
  end

  # A get request to /new will respond with a template with our new form that the user can complete to add a new post

    # @feed_api = JSON.parse(self.class.get("start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY").body)
    #
    # erb :'nasa/feed'
end
