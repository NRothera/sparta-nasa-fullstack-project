require_relative 'spec_helper'


describe NasaApiController do
  context 'requesting information on nasa api controller works' do

  def app
    NasaApiController.new
  end

  describe "GET '/'" do

     it "loads homepage" do
       get '/'
       expect(last_response).to be_ok
     end

     it "homepage includes the words orbiting body" do
       get '/'
       expect(last_response.body).to include("orbiting body")
     end
   end

   describe "GET '/nasa/browse'" do

     it 'loads the nasa browse meteor page' do
       get '/nasa/browse'
        expect(last_response).to be_ok
      end

      it "browse page includes the words orbiting body" do
        get '/nasa/browse'
        expect(last_response.body).to include("orbiting body")
      end
    end

    describe "GET '/nasa/lookup'" do

      it 'loads the nasa lookup meteor page' do
        get '/nasa/lookup' 
        expect(last_response).to be_ok
      end

      it "lookup page includes the words orbiting body" do
        get '/nasa/browse'
        expect(last_response.body).to include("orbiting body")
      end
    end
  end
end
