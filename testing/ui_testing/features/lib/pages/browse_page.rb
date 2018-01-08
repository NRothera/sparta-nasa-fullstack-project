require 'capybara/dsl'


class BrowsePage
  include Capybara::DSL

  BROWSE_LINK_ID = '#browse'
  LOOKUP_LINK_ID = '#lookup'
  HOMEPAGE_LINK_ID = '#homepage'
  FOOD_HOMEPAGE_LINK_ID = '#food'

  def find_browse_link
    find(BROWSE_LINK_ID)
  end

  def click_browse_link
    find_browse_link.click
  end

  def find_ufo_link
    find(FOOD_HOMEPAGE_LINK_ID)
  end

  def click_ufo_link
    find_ufo_link.click
  end

end
