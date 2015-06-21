#Inferno

An Elixir/Phoenix App for live-reloading tests.

##Getting Started

This repository includes a Dockerfile to get the working example up and running quickly. To start:

* Install Docker
* Clone this repository
* Build the docker image: docker build -t "inferno" .
* Run the docker image: docker run -t -i "inferno" /bin/bash

##TODO:

- Install Phoenix
- Learn how websockets work in Elixir & Phoenix
- ...
- profit?

##Also:

- create json reporters for rspec, cucumber, and jasmine ?


##The backstory:

What really got me interested in this whole idea:

* [Running Rspec Tests From the Browser](https://blog.jcoglan.com/2013/07/01/running-rspec-tests-from-the-browser/)

  This is a livereload implementation of Rspec tests using [jstest](http://jstest.jcoglan.com/), faye-websocket, and split (?)

  Which is cool & all, but I saw websockets and my mind went: hey! Rails 5 is bringing in the websockets, is that go for launch yet? And so I googled it, and it looks like there's a [websocket-rails](https://github.com/websocket-rails/websocket-rails) gem, but no actual rails implementation yet, so as I read about it, I found that Rails was being informed/inspired by some other frameworks that use websockets, including [Elixir/Phoenix](phoenixframework.org/v0.13.1), a rails-like mvc framework written in Elixir). So I thought, cool! New frameworks. Yay. 

  Elixir looks a lot like Ruby, too, which is super helpful for getting going. Only there's actual info about what data structures they chose for things like [] and {}, which is neat. So! That's where it all began.
