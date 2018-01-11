# sparta-nasa-fullstack-project

# Website

This is a full stack NASA NEO Website with fully automated Testing. The backend uses Sinatra, the RESTful routes are set up manually.
The website displays meteor information consumed from NASA's API on Near Earth Objects. When you refresh the page on either the homepage, browse page or lookup page it will show you a different meteor with the most pertinent information.
The UFO homepage is for displaying information on different UFO sightings over the years.

# Testing

To use this repot, run the following code in your terminal

```bash
git clone git@github.com:NRothera/sparta-nasa-fullstack-project.git
cd sparta-sdet-project
bundle install
psql -d delicious_food -f seed.sql
rackup
```
visit the website at http://localhost:9292/

To start testing, cd into the testing folder
```bach
cd testing
```

# Unit Testing

Cd into the unit_testing folder and run rspec in your terminal to run the tests.

```bash
cd unit_testing
rspec
```

The unit tests test the api controller and the ufo controller and checks that the routes are working.

# Integration Testing

Cd into the integration_testing folder and run rspec in your folder.

```integration_testing
cd integration_testing
rspec
```

 The integration tests pull the API information from the NASA website and make sure the correct information is being outputted.

# UI Testing


Cd into the ui_testing folder and run cucumber to run the tests
```bach
cd ui_testing
cucumber
```
Once that is done, run cucumber. This will open the website, check the links are working, create a post, edit the post and delete the post.
If you want to run a specific feature test, run cucumber followed by the name of the feature file you want to run
