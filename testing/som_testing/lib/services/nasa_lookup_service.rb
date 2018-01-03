require 'httparty'
require 'json'

class NasaLookupApi

  attr_accessor :nasa_lookup_data

  def initialize
    @nasa_lookup_data = nil
  end

  include HTTParty

  base_uri "https://api.nasa.gov/neo/rest/v1/neo"

  def get_lookup_api
    @nasa_lookup_data = JSON.parse(self.class.get("/3542519?api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").body)
  end

  def get_content
    @nasa_lookup_data
  end

  def get_neo_reference_id
    get_content['neo_reference_id']
  end

  def get_neo_reference_id_length
    get_content['neo_reference_id'].length
  end

  def get_meteor_name
    get_content['name']
  end

  def get_nasa_jpl_url
    get_content['nasa_jpl_url']
  end

  def get_absolute_magnitue
    get_content['absolute_magnitude_h']
  end

  def get_diameter
    get_content['estimated_diameter']
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
    close = []
    close.push(get_content['close_approach_data'][0])
    close
  end

  def get_date_close_approach
    date=[]
    get_close.each do |x|
      date.push(x['close_approach_date'])
    end
    date
  end

  def get_epoch_close_approach
    epoch=[]
    get_close.each do |x|
      epoch.push(x['epoch_date_close_approach'])
    end
    epoch
  end

  def get_speed
    speed=[]
    get_close.each do |x|
      speed.push(x['relative_velocity'])
    end
    speed
  end

  def get_speed_km_s
    km=[]
    get_speed.each do |x|
      km.push(x['kilometers_per_second'].to_f)
    end
    km
  end

  def get_speed_km_h
    km=[]
    get_speed.each do |x|
      km.push(x['kilometers_per_hour'].to_f)
    end
    km
  end

  def get_speed_mp_h
    mp=[]
    get_speed.each do |x|
      mp.push(x['miles_per_hour'].to_f)
    end
    mp
  end

  def miss_data
    miss=[]
    get_close.each do |x|
      miss.push(x['miss_distance'])
    end
    miss
  end

  def get_astronomical_miss
    astron=[]
    miss_data.each do |x|
      astron.push(x['astronomical'])
    end
    astron
  end

  def get_lunar_miss
    lunar=[]
    miss_data.each do |x|
      lunar.push(x['lunar'])
    end
    lunar
  end

  def get_miss_distance_km
    kilometers=[]
    miss_data.each do |x|
      kilometers.push(x['kilometers'])
    end
    kilometers
  end

  def get_miss_distance_miles
    miles=[]
    miss_data.each do |x|
      miles.push(x['miles'])
    end
    miles
  end

  def get_orbiting_body
    orbiting=[]
    get_close.each do |x|
      orbiting.push(x['orbiting_body'])
    end
    orbiting
  end

end
