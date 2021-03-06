And("I click on the new food link") do
  ufo_homepage_page.click_new_ufo_link
end

And("I fill in the input fields") do
  new_ufo_page.input_ufo_name("Green Fireballs")
  new_ufo_page.input_ufo_description("Green fireballs are a type of unidentified flying object which have been sighted in the sky since the late 1940s. Early sightings primarily occurred in the southwestern United States, particularly in New Mexico. They were once of notable concern to the US government because they were often clustered around sensitive research and military installations, such as Los Alamos and Sandia National Laboratory, then Sandia base")
  new_ufo_page.input_image_link("https://www.sott.net/image/s7/143925/medium/601id_small.jpg")
end

Then("I should be able to click the save button and make a new post") do
  new_ufo_page.click_save_button
  sleep 3
end
