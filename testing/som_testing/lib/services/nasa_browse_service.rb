require 'httparty'
require 'json'

class NasaBrowseApi

  attr_accessor :nasa_browse_data

  def initialize
    @nasa_browse_data = nil
  end

  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/browse?'

  def get_browse_api
    today = Time.now.strftime("%Y-%m-%d")
    @nasa_browse_data = JSON.parse(self.class.get("&api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").body)
  end

  def get_near_earth_object
    @nasa_browse_data['near_earth_objects'][0]
  end

  def get_neo_reference_id
    get_near_earth_object['neo_reference_id'].to_i
  end

  def get_neo_reference_id_length
    get_near_earth_object['neo_reference_id'].length
  end

  def get_absolute_magnitue
    get_near_earth_object['absolute_magnitude_h']
  end

  def get_diameter
    get_near_earth_object['estimated_diameter']
  end

  def get_diameter_kilometers
    get_diameter['kilometers']
  end

  def get_kilometers_min
    get_diameter_kilometers['estimated_diameter_min']
  end

  def get_kilometers_max
    get_diameter_kilometers['estimated_diameter_max']
  end

  def get_diameter_meters
    get_diameter['meters']
  end

  def get_meters_min
    get_diameter_meters['estimated_diameter_min']
  end

  def get_meters_max
    get_diameter_meters['estimated_diameter_max']
  end

  def get_diameter_miles
    get_diameter['miles']
  end

  def get_miles_min
    get_diameter_miles['estimated_diameter_min']
  end

  def get_miles_max
    get_diameter_miles['estimated_diameter_max']
  end

  def get_diameter_feet
    get_diameter['feet']
  end

  def get_feet_min
    get_diameter_feet['estimated_diameter_min']
  end

  def get_feet_max
    get_diameter_feet['estimated_diameter_max']
  end

  def get_danger_info
    get_content['is_potentially_hazardous_asteroid']
  end

  def get_close
    get_near_earth_object['close_approach_data'][0]
  end

  def get_date_close_approach
    get_close['close_approach_date']
  end

  def get_epoch_close_approach
    get_close['epoch_date_close_approach']
  end

  def get_speed
    get_close['relative_velocity']
  end

  def get_speed_km_s
    get_speed['kilometers_per_second'].to_f
  end

  def get_speed_km_h
    get_speed['kilometers_per_hour'].to_f
  end

  def get_speed_mp_h
    get_speed['miles_per_hour'].to_f
  end

  def miss_data
    get_close['miss_distance']
  end

  def get_astronomical_miss
    miss_data['astronomical'].to_f
  end

  def get_lunar_miss
    miss_data['lunar'].to_f
  end

  def get_miss_distance_km
    miss_data['kilometers']
  end

  def get_miss_distance_miles
    miss_data['miles']
  end

  def get_orbiting_body
    get_close['orbiting_body']
  end


end
