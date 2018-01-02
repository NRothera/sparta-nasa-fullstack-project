require 'spec_helper'

describe NasaBrowseApi do
  context 'requesting information on nasa feed api works correctly' do

    before(:all) do
      @nasa = NasaApi.new.nasa_browse_data
      @nasa.get_browse_api
    end

    it "should have near earth object as kind of hash" do
      expect(@nasa.get_near_earth_object).to be_kind_of(Hash)
    end

    it 'should have a neo reference id as a integer' do
      expect(@nasa.get_neo_reference_id).to be_kind_of(Integer)
    end

    it 'should have a neo reference length of 7' do
      expect(@nasa.get_neo_reference_id_length).to eql(7)
    end

    it 'should have absolute_magnitude_h as kind of float' do
      expect(@nasa.get_absolute_magnitue).to be_kind_of(Float)
    end

    it 'should have diameter as kind of hash' do
      expect(@nasa.get_diameter).to be_kind_of(Hash)
    end

    it 'should have diameter_kilometers as kind of hash' do
      expect(@nasa.get_diameter_kilometers).to be_kind_of(Hash)
    end

    it 'should have minimum kilometer diameter as float' do
      expect(@nasa.get_kilometers_min).to be_kind_of(Float)
    end

    it 'should have maximum kilometer diameter as float' do
      expect(@nasa.get_kilometers_max).to be_kind_of(Float)
    end

    it 'should have minimum meter diameter as float' do
      expect(@nasa.get_meters_min).to be_kind_of(Float)
    end

    it 'should have maximum meter diameter as float' do
      expect(@nasa.get_meters_max).to be_kind_of(Float)
    end

    it 'should have miles min as kind of float' do
      expect(@nasa.get_miles_min).to be_kind_of(Float)
    end

    it 'should have miles max as kind of float' do
      expect(@nasa.get_miles_max).to be_kind_of(Float)
    end

    it 'should have feet_min as kind of Float' do
      expect(@nasa.get_feet_min).to be_kind_of(Float)
    end

    it 'should have feet_max as kind of Float' do
      expect(@nasa.get_feet_max).to be_kind_of(Float)
    end

    it 'should have get close data as kind of hash or be nil' do
      expect(@nasa.get_close).to be_kind_of(Hash).or be_nil
    end

    it 'should have date of close approach as kind of String or be nil' do
      expect(@nasa.get_date_close_approach).to be_kind_of(String).or be_nil
    end

    it 'should have date of approach have length of 10 or be nil' do
      expect(@nasa.get_date_close_approach.length).to eql(10).or be_nil
    end

    it 'should have epoch close approach as kind of integer or be nil' do
      expect(@nasa.get_epoch_close_approach).to be_kind_of(Integer).or be_nil
    end

    it 'should have speed info as kind of hash or be nil' do
      expect(@nasa.get_speed).to be_kind_of(Hash).or be_nil
    end

    it 'should have speed in km/s to be a float' do
      expect(@nasa.get_speed_km_s).to be_kind_of(Float)
    end

    it 'should have speed in km/h to be a float' do
      expect(@nasa.get_speed_km_h).to be_kind_of(Float)
    end

    it 'should have speed in mp/h to be a float' do
      expect(@nasa.get_speed_mp_h).to be_kind_of(Float)
    end

    it 'should have miss data as kind of hash' do
      expect(@nasa.miss_data).to be_kind_of(Hash)
    end

    it 'should have astronomical miss as kind of float' do
      expect(@nasa.get_astronomical_miss).to be_kind_of(Float)
    end

    it 'should have lunar miss as kind of float' do
      expect(@nasa.get_lunar_miss).to be_kind_of(Float)
    end

    it 'should have miss in km as kind of String' do
      expect(@nasa.get_miss_distance_km).to be_kind_of(String)
    end

    it 'should have miss in miles as kind of String' do
      expect(@nasa.get_miss_distance_miles).to be_kind_of(String)
    end

    it 'should have orbiting body as kind of string' do
      expect(@nasa.get_orbiting_body).to be_kind_of(String)
    end



  end



end
