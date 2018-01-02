require_relative 'spec_helper'
require 'rack/test'
require 'test/unit'

describe NasaApiController do
  context 'requesting information on nasa api controller works' do
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    it "displays home page" do
      get '/'
      assert last_response.ok?
      assert_equal 'orbiting body = Earth', last_response.body
    end

  end
end
