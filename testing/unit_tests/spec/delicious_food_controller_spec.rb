require_relative 'spec_helper'


describe DeliciousFoodsController do
  context 'requesting information on delicious food controller works' do
     def app
       DeliciousFoodsController.new
     end

     describe "GET '/food'" do

       it "loads food homepage" do
         get '/food'
       end
     end

     describe "GET /food/new" do
       it 'loads new food page' do
         get '/food/new'
         expect(last_response).to be_ok?
       end
     end

  end
end
