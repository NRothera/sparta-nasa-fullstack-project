And("I can click on a post") do
  ufo_homepage_page.click_ufo_title
end

And("I can click the edit button") do
  show_page.click_edit_button
end

And("I change the body and title of the post") do
  edit_ufo_page.input_ufo_name("Spooky Ufo")
  edit_ufo_page.input_ufo_description("I have edited the post")
  sleep 2
end
