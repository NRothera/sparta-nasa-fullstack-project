require 'httparty'
require 'json'

class NasaLookupApi

  attr_accessor :nasa_feed_data

  def initialize
    @nasa_feed_data = nil
  end

  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def get_feed_api
    @nasa_feed_data = JSON.parse(self.class.get("3542519?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").body)
  end

  # def get_content
  #   @nasa_feed_data
  # end
  #
  # def get_neo_reference_id
  #   get_content['neo_reference_id'].to_i
  # end
  #
  # def get_neo_reference_id_length
  #   get_content['neo_reference_id'].length
  # end
  #
  # def get_absolute_magnitue
  #   get_content['absolute_magnitude_h']
  # end
  #
  # def get_diameter
  #   get_content['estimated_diameter']
  # end
  #
  # def get_diameter_kilometers
  #   get_diameter['kilometers']
  # end
  #
  # def get_kilometers_min
  #   get_diameter_kilometers['estimated_diameter_min']
  # end
  #
  # def get_kilometers_max
  #   get_diameter_kilometers['estimated_diameter_max']
  # end
  #
  # def get_diameter_meters
  #   get_diameter['meters']
  # end
  #
  # def get_meters_min
  #   get_diameter_meters['estimated_diameter_min']
  # end
  #
  # def get_meters_max
  #   get_diameter_meters['estimated_diameter_max']
  # end
  #
  # def get_diameter_miles
  #   get_diameter['miles']
  # end
  #
  # def get_miles_min
  #   get_diameter_miles['estimated_diameter_min']
  # end
  #
  # def get_miles_max
  #   get_diameter_miles['estimated_diameter_max']
  # end
  #
  # def get_diameter_feet
  #   get_diameter['feet']
  # end
  #
  # def get_feet_min
  #   get_diameter_feet['estimated_diameter_min']
  # end
  #
  # def get_feet_max
  #   get_diameter_feet['estimated_diameter_max']
  # end
  #
  # def get_danger_info
  #   get_content['is_potentially_hazardous_asteroid']
  # end
  #
  # def get_close
  #   get_content['close_approach_data'][0]
  # end
  #
  # def get_date_close_approach
  #   get_close['close_approach_date']
  # end
  #
  # def get_epoch_close_approach
  #   get_close['epoch_date_close_approach']
  # end
  #
  # def get_speed
  #   get_close['relative_velocity']
  # end
  #
  # def get_speed_km_s
  #   get_speed['kilometers_per_second'].to_f
  # end
  #
  # def get_speed_km_h
  #   get_speed['kilometers_per_hour'].to_f
  # end
  #
  # def get_speed_mp_h
  #   get_speed['miles_per_hour'].to_f
  # end
  #
  # def miss_data
  #   get_close['miss_distance']
  # end
  #
  # def get_astronomical_miss
  #   miss_data['astronomical'].to_f
  # end
  #
  # def get_lunar_miss
  #   miss_data['lunar'].to_f
  # end
  #
  # def get_miss_distance_km
  #   miss_data['kilometers']
  # end
  #
  # def get_miss_distance_miles
  #   miss_data['miles']
  # end
  #
  # def get_orbiting_body
  #   get_close['orbiting_body']
  # end

end

new_data = NasaLookupApi.new
puts new_data.get_feed_api
