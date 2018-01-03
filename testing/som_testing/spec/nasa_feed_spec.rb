require 'spec_helper'

describe NasaFeedApi do
  context 'requesting information on nasa feed api works correctly' do

    before(:all) do
      @nasa = NasaApi.new.nasa_feed_data
      @nasa.get_feed_api
    end

    it "should have near earth object as kind of hash" do
      expect(@nasa.get_near_earth_object).to be_kind_of(Hash)
    end

    it "should have content as kind of Array" do
      expect(@nasa.get_content).to be_kind_of(Array)
    end

    it 'should have an element count as an integer' do
      expect(@nasa.get_element_count).to be_kind_of(Integer)
    end

    it 'should have an element count above 0' do
      expect(@nasa.get_element_count).to be > 0
    end

    it 'should have a neo reference id as a string' do
      @nasa.get_neo_reference_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have a neo reference length of 7' do
      @nasa.get_neo_reference_id_length.each do |x|
        expect(x).to eql(7)
      end
    end

    it 'should have absolute_magnitude_h as kind of float' do
      @nasa.get_absolute_magnitue.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have diameter as kind of hash' do
      @nasa.get_diameter.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have diameter_kilometers as kind of hash' do
      @nasa.get_diameter_kilometers.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have minimum kilometer diameter as float' do
      @nasa.get_kilometers_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have maximum kilometer diameter as float' do
      @nasa.get_kilometers_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have minimum meter diameter as float' do
      @nasa.get_meters_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have maximum meter diameter as float' do
      @nasa.get_meters_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have miles min as kind of float' do
      @nasa.get_miles_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have miles max as kind of float' do
      @nasa.get_miles_max.each do|x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have feet_min as kind of Float' do
      @nasa.get_feet_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have feet_max as kind of Float' do
      @nasa.get_feet_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have get close data as kind of hash' do
      @nasa.get_close.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have date of close approach as kind of String' do
      @nasa.get_date_close_approach.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have date of approach have length of 10' do
      @nasa.get_date_close_approach.each do |x|
        expect(x.length).to eql(10)
      end
    end

    it 'should have epoch close approach as kind of integer' do
      @nasa.get_epoch_close_approach.each do|x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it 'should have speed info as kind of hash' do
      @nasa.get_speed.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have speed in km/s to be a float' do
      @nasa.get_speed_km_s.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have speed in km/h to be a float' do
      @nasa.get_speed_km_h.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have speed in mp/h to be a float' do
      @nasa.get_speed_mp_h.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it 'should have miss data as kind of hash' do
      @nasa.miss_data.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have astronomical miss as kind of float' do
      @nasa.get_astronomical_miss.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have lunar miss as kind of float' do
      @nasa.get_lunar_miss.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have miss in km as kind of String' do
      @nasa.get_miss_distance_km.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have miss in miles as kind of String' do
      @nasa.get_miss_distance_miles.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have orbiting body as kind of string' do
      @nasa.get_orbiting_body.each do |x|
        expect(x).to be_kind_of(String)
      end
    end



  end



end
