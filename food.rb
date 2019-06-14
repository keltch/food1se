#!/usr/bin/env ruby

#==  Context
# Food Application is launched from the command line with this file. 
# The application root is set for easy reference 
# a new instance of guide is the container for the application
#== Functional Owner
# Brian Keltch as of 2/11/19  Organization PhD student
#== Developer
#- Kirk Sojerkin as of 1/16/17  Sojerkin Inc.  Initial Code
#- Brian Keltch as of 1/22/19  Refactor to add BDD, TDD, and Self Evident features
APP_ROOT = File.dirname(__FILE__)

require './lib/guide'

guide = Guide.new('restaurants.txt')
guide.launch!
