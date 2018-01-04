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

    @nasa_browse_data = JSON.parse(self.class.get("&api_key=t5NgA4dcQzGkSYPn1qGtVF8GhnhyR0lmr2HNpjym").body)
  end

  def get_near_earth_object
    @nasa_browse_data['near_earth_objects']
  end

  def get_neo_reference_id
    ids = []
    get_near_earth_object.each do |x|
      ids.push(x['neo_reference_id'])
    end
    ids
  end

  def get_neo_reference_id_length
    length = []
    get_near_earth_object.each do |x|
      length.push(x['neo_reference_id'].length)
    end
    length
  end

  def get_absolute_magnitue
    magnitude = []
    get_near_earth_object.each do |x|
      magnitude.push(x['absolute_magnitude_h'])
    end
    magnitude
  end

  def get_diameter
    diameters=[]
    get_near_earth_object.each do |x|
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
    get_near_earth_object.each do |x|
      danger.push(x['is_potentially_hazardous_asteroid'])
    end
    danger
  end

  def get_close
    close = []
    get_near_earth_object.each do |x|
      close.push(x['close_approach_data'][0])
    end
    close
  end

  def get_date_close_approach
    date=[]
    get_close.each do |x|
      if x
        date.push(x['close_approach_date'])
      end
    end
    date
  end

  def get_epoch_close_approach
    epoch=[]
    get_close.each do |x|
      if x
        epoch.push(x['epoch_date_close_approach'])
      end
    end
    epoch
  end

  def get_speed
    speed=[]
    get_close.each do |x|
      if x
        speed.push(x['relative_velocity'])
      end
    end
    speed
  end

  def get_speed_km_s
    km=[]
    get_speed.each do |x|
      if x
        km.push(x['kilometers_per_second'].to_f)
      end
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
      if x
        mp.push(x['miles_per_hour'].to_f)
      end
    end
    mp
  end

  def miss_data
    miss=[]
    get_close.each do |x|
      if x
        miss.push(x['miss_distance'])
      end
    end
    miss
  end

  def get_astronomical_miss
    astron=[]
    miss_data.each do |x|
      if x
        astron.push(x['astronomical'])
      end
    end
    astron
  end

  def get_lunar_miss
    lunar=[]
    miss_data.each do |x|
      if x
        lunar.push(x['lunar'])
      end
    end
    lunar
  end

  def get_miss_distance_km
    kilometers=[]
    miss_data.each do |x|
      if x
        kilometers.push(x['kilometers'])
      end
    end
    kilometers
  end

  def get_miss_distance_miles
    miles=[]
    miss_data.each do |x|
      if x
        miles.push(x['miles'])
      end
    end
    miles
  end

  def get_orbiting_body
    orbiting=[]
    get_close.each do |x|
      if x
        orbiting.push(x['orbiting_body'])
      end
    end
    orbiting
  end

  def get_orbital_data
    orbital_data = []
    get_near_earth_object.each do |x|
      orbital_data.push(x["orbital_data"])
    end
    orbital_data
  end

  def get_orbit_id
    id=[]
    get_orbital_data.each do |x|
      id.push(x['orbit_id'])
    end
    id
  end

  def get_orbit_determination_date
    date=[]
    get_orbital_data.each do |x|
      date.push(x['orbit_determination_date'])
    end
    date
  end

  def get_orbit_uncertainty
    uncertainty=[]
    get_orbital_data.each do |x|
      uncertainty.push(x['orbit_uncertainty'])
    end
    uncertainty
  end

  def get_minimum_orbit_intersection
    min=[]
    get_orbital_data.each do |x|
      min.push(x['minimum_orbit_intersection'])
    end
    min
  end

  def get_jupiter_tisserand_invariant
    jupiter=[]
    get_orbital_data.each do |x|
      jupiter.push(x["jupiter_tisserand_invariant"])
    end
    jupiter
  end

  def get_epoch_osculation
    epoch=[]
    get_orbital_data.each do |x|
      epoch.push(x['epoch_osculation'])
    end
    epoch
  end

  def get_eccentricity
    eccentricity=[]
    get_orbital_data.each do |x|
      eccentricity.push(x['eccentricity'])
    end
    eccentricity
  end

  def get_semi_major_axis
    major=[]
    get_orbital_data.each do |x|
      major.push(x['semi_major_axis'])
    end
    major
  end

  def get_inclination
    inclination=[]
    get_orbital_data.each do |x|
      inclination.push(x['inclination'])
    end
    inclination
  end

  def get_ascending_node_longitude
    node=[]
    get_orbital_data.each do |x|
      node.push(x['ascending_node_longitude'])
    end
    node
  end

  def get_orbital_period
    orbital=[]
    get_orbital_data.each do |x|
      orbital.push(x['orbital_period'])
    end
    orbital
  end

  def get_perihelion_distance
    distance=[]
    get_orbital_data.each do |x|
      distance.push(x['perihelion_distance'])
    end
    distance
  end

  def get_perihelion_argument
    argument=[]
    get_orbital_data.each do |x|
      argument.push(x['perihelion_argument'])
    end
    argument
  end

  def get_aphelion_distance
    aphelion=[]
    get_orbital_data.each do |x|
      aphelion.push(x['aphelion_distance'])
    end
    aphelion
  end

  def get_perihelion_time
    time=[]
    get_orbital_data.each do |x|
      time.push(x['perihelion_time'])
    end
    time
  end

  def get_mean_anomaly
    mean=[]
    get_orbital_data.each do |x|
      mean.push(x['mean_anomaly'])
    end
    mean
  end

  def get_mean_motion
    mean=[]
    get_orbital_data.each do |x|
      mean.push(x['mean_motion'])
    end
    mean
  end

  def get_equinox
    equinox=[]
    get_orbital_data.each do |x|
      equinox.push(x['equinox'])
    end
    equinox
  end





end
