require_relative 'spec_helper'


describe NasaApiController do
  context 'requesting information on nasa api controller works' do

  describe "GET '/'" do

      def app
        NasaApiController.new
      end

     it "loads homepage" do
       get '/'
       expect(last_response).to be_ok
     end

     it "homepage includes the words orbiting body" do
       get '/'
       expect(last_response.body).to include("orbiting body")
     end
   end
  end
end
