require_relative 'spec_helper'
require 'test/unit'

describe DeliciousFoodsController do
  context 'requesting information on UFO controller works' do

    include Rack::Test::Methods

     def app
      DeliciousFoodsController.new
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
     end

     describe "GET /ufo/new" do

       it 'loads new ufo page' do
         get '/ufo/new'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo'
         expect(last_response.status).to eql(200)
       end
     end

     describe "GET /ufo/:id" do

       it 'loads the ufo show page' do
         get '/ufo/15'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo'
         expect(last_response.status).to eql(200)
       end
     end

     describe "GET /ufo/:id/edit" do

       it 'shouls laod the ufo edit page' do
         get '/ufo/15/edit'
         expect(last_response).to be_ok
       end

       it 'should have last response status of 200' do
         get '/ufo/15/edit'
         expect(last_response.status).to eql(200)
       end

     end
  end
end
