require_relative 'spec_helper'
require 'test/unit'
require_relative '../../../controllers/delicious_food_controller'


describe DeliciousFoodsController do
  context 'requesting information on delicious food controller works' do

     def app
      DeliciousFoodsController.new
     end

     describe "GET '/ufo'" do

       it "loads ufo homepage" do
         get '/ufo'
         expect(last_response).to be_ok
       end
     end

     describe "GET /ufo/new" do

       it 'loads new ufo page' do
         get '/food/new'
         expect(last_response).to be_ok
       end
     end

     describe "GET /ufo/:id" do

       it 'loads the ufo show page' do
         get '/ufo/15'
         expect(last_response).to include("while")
       end
     end
  end
end
