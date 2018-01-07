# sparta-nasa-fullstack-project

# Website

This is a full stack NASA NEO Website with fully automated Testing. The backend uses Sinatra, the RESTful routes are set up manually.
The website displays meteor information consumed from NASA's API on Near Earth Objects. When you refresh the page on either the homepage, browse page or lookup page it will show you a different meteor with the most pertinent information.
The UFO homepage is for displaying information on different UFO sightings over the years.

# Testing

To use the website, clone the repot and run the seed file in order to fill the database. You may need to set up your own database in Postgresql first.
To start testing, cd into the testing folder.

# Unit Testing

To run the unit tests, make sure you have the rspec gem installed. Cd into the unit_testing folder and run rspec in your terminal to see them run. The unit tests test the api controller and the ufo controller and checks that the routes are working.

# Integration Testing

Make sure you have the rspec gem install and have the httparty gem installed. Cd into the integration_testing folder and run rspec in your folder. The integration tests pull the API information from the NASA website and make sure the correct information is being outputted.

# UI Testing

Make sure you have the cucumber gem installed and the capybara gem installed. You will also need to gem install selenium and then run selenium install.
Once that is done, cd into the ui_testing folder. Make sure you are have the server running by running rackup in your terminal.
Once that is done, run cucumber. This will open the website, check the links are working, create a post, edit the post and delete the post.
