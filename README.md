Template App
================

[![Join the chat at https://gitter.im/netguru-training/so-long-and-thanks-for-all-the-fish](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/netguru-training/so-long-and-thanks-for-all-the-fish?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

App description
---------------
Do you need website where you can share your favorite places with other users? So you are in right place! Add new interesting place (pub, restaurant etc.) or explore others. Don't forget to leave your review about place where you have been. Create a event in choosen place, wait for your friends and talk about event's details.

Features:
-------------------------

Authorization and authentication:
  - Visitor can sign up and sign up to website usign his email
  - User can edit his data
  - User can delete his account

Places:
  - User can view places entries 
  - User can go to choosen place
  - User can add new place (when signed in)
  - User can edit/delete place (when signed in and when entry belogns to him)

Reviews:
  - User can post ONE review with the grade to choosen place (when signed in)
  - User can edit/delete his own review (when signed in)

Events:
  - User can view events entries
  - User can create event corresponding to existing places (when signed in)
  - User can edit/delete event (when signed in and when entry belogns to him)
  - User can participate to event (when signed in) [not implemented yet]
  - User can share messages to event which he joined (when signed in) [not implemented yet]

Check the app on Heroku!
-------------------------
https://cryptic-stream-5771.herokuapp.com/

