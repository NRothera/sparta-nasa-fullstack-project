require 'httparty'
require 'json'

class NasaFeedApi

  attr_accessor :nasa_feed_data

  def initialize
    @nasa_feed_data = nil
  end

  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?start_date='

  def get_feed_api
    today = Time.now.strftime("%Y-%m-%d")
    @nasa_feed_data = JSON.parse(self.class.get("#{today}&end_date=#{today}&api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").body)
  end

  def get_near_earth_object
    @nasa_feed_data['near_earth_objects']
  end

  def get_content
    today = Time.now.strftime("%Y-%m-%d")
    get_near_earth_object[today]
  end

  def get_element_count
    @nasa_feed_data['element_count']
  end

  def get_neo_reference_id
    ids = []
    get_content.each do |x|
      ids.push(x['neo_reference_id'])
    end
    ids
  end

  def get_neo_reference_id_length
    length = []
    get_content.each do |x|
      length.push(x['neo_reference_id'].length)
    end
    length
  end

  def get_absolute_magnitue
    magnitude = []
    get_content.each do |x|
      magnitude.push(x['absolute_magnitude_h'])
    end
    magnitude
  end

  def get_diameter
    diameters=[]
    get_content.each do |x|
      diameters.push(x['estimated_diameter'])
    end
    diameters
  end

  def get_diameter_kilometers
    kilometers = []
    get_diameter.each do |x|
      kilometers.push(x['kilometers'])
    end
    kilometers
  end

  def get_kilometers_min
    min = []
    get_diameter_kilometers.each do |x|
      min.push(x['estimated_diameter_min'])
    end
    min
  end

  def get_kilometers_max
    max = []
    get_diameter_kilometers.each do |x|
      max.push(x['estimated_diameter_max'])
    end
    max
  end

  def get_diameter_meters
    meters = []
    get_diameter.each do |x|
      meters.push(x['meters'])
    end
    meters
  end

  def get_meters_min
    min = []
    get_diameter_meters.each do |x|
      min.push(x['estimated_diameter_min'])
    end
    min
  end

  def get_meters_max
    max=[]
    get_diameter_meters.each do |x|
      max.push(x['estimated_diameter_max'])
    end
    max
  end

  def get_diameter_miles
    miles = []
    get_diameter.each do |x|
      miles.push(x['miles'])
    end
    miles
  end

  def get_miles_min
    min=[]
    get_diameter_miles.each do |x|
      min.push(x['estimated_diameter_min'])
    end
    min
  end

  def get_miles_max
    max = []
    get_diameter_miles.each do |x|
      max.push(x['estimated_diameter_max'])
    end
    max
  end

  def get_diameter_feet
    feet=[]
    get_diameter.each do |x|
      feet.push(x['feet'])
    end
    feet
  end

  def get_feet_min
    min=[]
    get_diameter_feet.each do |x|
      min.push(x['estimated_diameter_min'])
    end
    min
  end

  def get_feet_max
    max=[]
    get_diameter_feet.each do |x|
      max.push(x['estimated_diameter_max'])
    end
    max
  end

  def get_danger_info
    danger=[]
    get_content.each do |x|
      danger.push(x['is_potentially_hazardous_asteroid'])
    end
    danger
  end

  def get_close
    close = []
    get_content.each do |x|
      close.push(x['close_approach_data'][0])
    end
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
