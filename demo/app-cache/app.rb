#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require

puts "Execute any ruby code, for example"
puts "puts Hola.hi('english')"
puts "puts Hola.hi('spanish')"

binding.pry
