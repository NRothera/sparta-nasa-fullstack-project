And("I click on the new food link") do
  food_homepage_page.click_new_food_link
end

And("I fill in the input fields") do
  new_food_page.input_meal_name("Pizza")
  new_food_page.input_meal_description("A delicious dough, tomato and cheese mix")
  new_food_page.input_image_link("https://www.cicis.com/media/1176/pizza_trad_pepperonibeef.png")
end

Then("I should be able to click the save button and make a new post") do
  new_food_page.click_save_button
end
