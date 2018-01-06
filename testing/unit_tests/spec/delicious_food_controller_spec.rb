require_relative 'spec_helper'
require 'test/unit'

describe UFOController do
  context 'requesting information on UFO controller works' do

    include Rack::Test::Methods

     def app
      UFOController.new
     end

     describe "GET '/ufo'" do

       it "loads ufo homepage" do
         get '/ufo'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo'
         expect(last_response.status).to eql(200)
       end

       it 'should have title of The Mothman Prophecies' do
         get '/ufo', :title => 'The Mothman Prophecies'
         expect(last_response.body).to include('The Mothman Prophecies')
       end
     end

     describe "GET /ufo/new" do

       it 'loads new ufo page' do
         get '/ufo/new'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo/new'
         expect(last_response.status).to eql(200)
       end

       it 'should contain the word description' do
         get '/ufo/new'
         expect(last_response.body).to include('Description')
       end
     end

     describe "GET /ufo/:id" do

       it 'loads the ufo show page' do
         get '/ufo/19'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo/19'
         expect(last_response.status).to eql(200)
       end

       it 'should have title of Flatwoods Monster' do
         get '/ufo/19', :title => 'Flatwoods Monster'
         expect(last_response.body).to include('Flatwoods Monster')
       end
     end

     describe "GET /ufo/:id/edit" do

       it 'should load the ufo edit page' do
         get '/ufo/19/edit'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo/19/edit'
         expect(last_response.status).to eql(200)
       end

       it 'should include the word accounts' do
         get '/ufo/19/edit'
         expect(last_response.body).to include('accounts')
       end
     end

     describe 'POST /ufo/' do

       it 'should redirect to /ufo' do
         post '/ufo/'
         follow_redirect!
         expect(last_request.path).to eq('/ufo')
       end
     end

  end
end
