require 'spec_helper'

describe NasaBrowseApi do
  context 'requesting information on nasa browse api works correctly' do

    before(:all) do
      @nasa = NasaApi.new.nasa_browse_data
      @nasa.get_browse_api
    end

    it "should have near earth object as kind of array" do
      expect(@nasa.get_near_earth_object).to be_kind_of(Array)
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

    it 'should have danger info to be true or false' do
      @nasa.get_danger_info.each do |x|
        expect(x).to be_truthy.or be_falsy
      end
    end

    it 'should have get close data as kind of hash or be nil' do
      @nasa.get_close.each do |x|
        expect(x).to be_kind_of(Hash).or be_nil
      end
    end

    it 'should have date of close approach as kind of String or be nil' do
      @nasa.get_date_close_approach.each do |x|
        expect(x).to be_kind_of(String).or eql('no data')
      end
    end

    it 'should have date of approach have length of 10 or be nil' do
      @nasa.get_date_close_approach.each do |x|
        expect(x.length).to eql(10).or be_nil
      end
    end

    it 'should have epoch close approach as kind of integer or be nil' do
      @nasa.get_epoch_close_approach.each do|x|
        expect(x).to be_kind_of(Integer).or be_nil
      end
    end

    it 'should have speed info as kind of hash or be_nil' do
      @nasa.get_speed.each do |x|
        expect(x).to be_kind_of(Hash).or be_nil
      end
    end

    it 'should have speed in km/s to be a float or be nil' do
      @nasa.get_speed_km_s.each do |x|
        expect(x).to be_kind_of(Float).or be_nil
      end
    end

    it 'should have speed in km/h to be a float' do
      @nasa.get_speed_km_h.each do |x|
        expect(x).to be_kind_of(Float).or be_nil
      end
    end

    it 'should have speed in mp/h to be a float' do
      @nasa.get_speed_mp_h.each do |x|
        expect(x).to be_kind_of(Float).or be_nil
      end
    end

    it 'should have miss data as kind of hash' do
      @nasa.miss_data.each do |x|
        expect(x).to be_kind_of(Hash).or be_nil
      end
    end

    it 'should have astronomical miss as kind of float or be nil' do
      @nasa.get_astronomical_miss.each do |x|
        expect(x).to be_kind_of(String).or be_nil
      end
    end

    it 'should have lunar miss as kind of float or be nil' do
      @nasa.get_lunar_miss.each do |x|
        expect(x).to be_kind_of(String).or be_nil
      end
    end

    it 'should have miss in km as kind of String or be nil' do
      @nasa.get_miss_distance_km.each do |x|
        expect(x).to be_kind_of(String).or be_nil
      end
    end

    it 'should have miss in miles as kind of String or be nil' do
      @nasa.get_miss_distance_miles.each do |x|
        expect(x).to be_kind_of(String).or be_nil
      end
    end

    it 'should have orbiting body as kind of string or be_nil' do
      @nasa.get_orbiting_body.each do |x|
        expect(x).to be_kind_of(String).or be_nil
      end
    end

    it 'should have orbital data as a kind of hash' do
      @nasa.get_orbital_data.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should have orbital id as kind of string' do
      @nasa.get_orbit_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have orbit_determination_date as kind of string' do
      @nasa.get_orbit_determination_date.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have orbit_determination_date length as 14' do
      @nasa.get_orbit_determination_date.each do |x|
        expect(x.length).to eql(19)
      end
    end

    it 'should have orbit uncertainty as kind of string' do
      @nasa.get_orbit_uncertainty.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have minimum orbit intersecion as kind of string' do
      @nasa.get_minimum_orbit_intersection.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have jupiter_tisserand_invariant as kind of string' do
      @nasa.get_jupiter_tisserand_invariant.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have epoch as kind of string' do
      @nasa.get_epoch_osculation.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have eccentricity as kind of string' do
      @nasa.get_eccentricity.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have semi_major_axis as kind of string' do
      @nasa.get_semi_major_axis.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have inclination as kind of string' do
      @nasa.get_inclination.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have ascending_node_longitude as kind of string' do
      @nasa.get_ascending_node_longitude.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have orbital period as kind of String' do
      @nasa.get_orbital_period.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have perihelion_distance as kind of string' do
      @nasa.get_perihelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have perihelion_argument as kind of string' do
      @nasa.get_perihelion_argument.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have aphelion_distance as kind of string' do
      @nasa.get_aphelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have perihelion_time as kind of string' do
      @nasa.get_perihelion_time.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have mean anomaly as kind of string' do
      @nasa.get_mean_anomaly.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have mean motion as kind of string' do
      @nasa.get_mean_motion.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should have equinox as kind of string' do
      @nasa.get_equinox.each do |x|
        expect(x).to be_kind_of(String)
      end
    end


  end



end
