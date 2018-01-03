require_relative 'pages/homepage'
require_relative 'pages/browse_page'
require_relative 'pages/new_food_page'
require_relative 'pages/food_homepage_page'


module NasaFoodSite

  def homepage
    HomePage.new
  end

  def browse_page
    BrowsePage.new
  end

  def new_food_page
    NewFoodPage.new
  end

  def food_homepage_page
    FoodHomepagePage.new
  end

end
