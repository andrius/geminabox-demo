#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require

puts "Starting my fancy app"
puts Hola.hi("english")
puts Hola.hi("spanish")
puts "Bye"
