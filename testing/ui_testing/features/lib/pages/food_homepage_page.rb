require 'capybara/dsl'

class FoodHomepagePage
  include Capybara::DSL

  HOMEPAGE_LINK_ID = '#homepage'
  NEW_FOOD_LINK_ID = '#new_food'
  FOOD_TITLE_ID = '#title14'

  def find_new_food_link
    find(NEW_FOOD_LINK_ID)
  end

  def click_new_food_link
    find_new_food_link.click
  end

  def find_food_title
    find(FOOD_TITLE_ID)
  end

  def click_food_title
    find_food_title.click
  end

end
