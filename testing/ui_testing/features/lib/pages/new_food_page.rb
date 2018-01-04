require 'capybara/dsl'

class NewFoodPage
  include Capybara::DSL

  HOMEPAGE_LINK_ID = '#homepage'
  NEW_FOOD_LINK_ID = '#new_food'
  MEAL_NAME_INPUT_ID = 'meal_name'
  MEAL_DESCRIPTION_INPUT_ID = 'meal_description'
  IMAGE_INPUT_LINK_ID = 'image_link'
  SAVE_BUTTON_ID = '#save'


  def input_meal_name(name)
    fill_in(MEAL_NAME_INPUT_ID, with: name)
  end

  def input_meal_description(body)
    fill_in(MEAL_DESCRIPTION_INPUT_ID, with: body)
  end

  def input_image_link(link)
    fill_in(IMAGE_INPUT_LINK_ID, with: link)
  end

  def find_save_button
    find(SAVE_BUTTON_ID)
  end

  def click_save_button
    find_save_button.click
  end



end
