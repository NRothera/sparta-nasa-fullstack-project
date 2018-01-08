require 'capybara/dsl'

class UfoHomepagePage
  include Capybara::DSL

  HOMEPAGE_LINK_ID = '#homepage'
  NEW_FOOD_LINK_ID = '#new_food'
  FOOD_TITLE_ID = '#title34'

  def find_new_ufo_link
    find(NEW_FOOD_LINK_ID)
  end

  def click_new_ufo_link
    find_new_ufo_link.click
  end

  def find_ufo_title
    find(FOOD_TITLE_ID)
  end

  def click_ufo_title
    find_ufo_title.click
  end

end
