require 'capybara/dsl'

class ShowPage
  include Capybara::DSL

  HOMEPAGE_LINK_ID = '#homepage'
  NEW_FOOD_LINK_ID = '#new_food'
  DELETE_BUTTON_ID = '#delete'
  EDIT_BUTTON_ID = '#edit'

  def find_delete_button
    find(DELETE_BUTTON_ID)
  end

  def click_delete_button
    find_delete_button.click
  end

  def find_edit_button
    find(EDIT_BUTTON_ID)
  end

  def click_edit_button
    find_edit_button.click
  end



end
