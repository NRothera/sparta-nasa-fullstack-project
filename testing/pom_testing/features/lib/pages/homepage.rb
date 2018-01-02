require 'capybara/dsl'

class HomePage
  include Capybara::DSL
  HOMEPAGE_URL = 'http://localhost:9292'
  BROWSE_LINK_ID = '#browse'
  LOOKUP_LINK_ID = '#lookup'
  HOMEPAGE_LINK_ID = '#homepage'
  FOOD_HOMEPAGE_LINK_ID = '#food'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def lookup_link
    find(LOOKUP_LINK_ID)
  end

  def click_lookup_link
    lookup_link.click
  end

end
