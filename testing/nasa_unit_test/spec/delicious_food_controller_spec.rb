require_relative 'spec_helper'


describe DeliciousFoodsController do
  context 'requesting information on delicious food controller works' do
     def app
       DeliciousFoodsController.new
     end

     describe "GET '/food'" do

       it "loads food homepage" do
         get '/food/'
         expect(last_response).to be_ok
       end
     end

  end
end
