require 'capybara/dsl'

class UfoHomepagePage
  include Capybara::DSL

  HOMEPAGE_LINK_ID = '#homepage'
  NEW_UFO_LINK_ID = '#new_food'
  UFO_TITLE_ID = '#title36'

  def find_new_ufo_link
    find(NEW_UFO_LINK_ID)
  end

  def click_new_ufo_link
    find_new_ufo_link.click
  end

  def find_ufo_title
    find(UFO_TITLE_ID)
  end

  def click_ufo_title
    find_ufo_title.click
  end

end
