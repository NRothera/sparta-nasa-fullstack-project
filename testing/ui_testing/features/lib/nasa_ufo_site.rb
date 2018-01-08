require_relative 'pages/homepage'
require_relative 'pages/browse_page'
require_relative 'pages/new_ufo_page'
require_relative 'pages/ufo_homepage_page'
require_relative 'pages/show_page'
require_relative 'pages/edit_resource_page'


module NasaUfoSite

  def homepage
    HomePage.new
  end

  def browse_page
    BrowsePage.new
  end

  def new_ufo_page
    NewUfoPage.new
  end

  def ufo_homepage_page
    UfoHomepagePage.new
  end

  def show_page
    ShowPage.new
  end

  def edit_ufo_page
    EditFoodPage.new
  end

end
