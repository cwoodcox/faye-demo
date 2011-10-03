faye-demo
=========

This is a silly little app I put together for a quick presentation I did at the [Utah Ruby Users Group](http://utruby.org)

Usage
-----

It's a simple Sinatra app running behind Rack, mostly to compile the CoffeeScript at runtime, and then Rack also fires up Faye as middleware as well. All you need to do is clone the project, bundle, and then fire up Rack like so:
    
    rackup -s thin -E production
    
Faye requires thin, and requires that it run in production mode. It's really picky like this, and it bothers me. One day, I might contribute to it and make it more dev friendly, but that's the status right now.

Hit up localhost:9292 and watch the (sorta) magic. It kinda works. Creating channels... really doesn't, actually. Feel free to contribute! I might work on this more in the future.