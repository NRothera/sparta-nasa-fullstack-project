And("I can click on a post") do
  food_homepage_page.click_food_title
end

And("I can click the edit button") do
  show_page.click_edit_button
end

And("I change the body and title of the post") do
  edit_food_page.input_meal_name("Tasty Pizza")
  edit_food_page.input_meal_description("I have edited the post")
end
