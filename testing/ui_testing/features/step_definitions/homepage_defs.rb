Given("I can access the homepage") do
  homepage.visit_homepage
end

And("I can find the lookup link") do
  homepage.find_lookup_link
end

And("I can click the lookup link") do
  homepage.visit_homepage
end

And("I can click the browse link") do
  browse_page.click_browse_link
end


Then("I can click the food homepage link") do
  browse_page.click_ufo_link
end
