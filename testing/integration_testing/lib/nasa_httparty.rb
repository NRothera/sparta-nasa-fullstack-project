require_relative 'services/nasa_feed_service'
require_relative 'services/nasa_lookup_service'
require_relative 'services/nasa_browse_service'

class NasaApi

  def nasa_feed_data
    NasaFeedApi.new
  end

  def nasa_lookup_data
    NasaLookupApi.new
  end

  def nasa_browse_data
    NasaBrowseApi.new
  end
  
end
