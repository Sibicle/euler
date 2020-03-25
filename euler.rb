#!/usr/bin/env ruby

require "optparse"

require "bundler/setup"
Bundler.require

Dir["./src/*.rb"].each {|file| require file }

options = {}

opt_parser = OptionParser.new do |opt|
  opt.banner = "Usage: euler PROBLEM [ARGUMENTS]"

  opt.on("-h","--help","help") do
    puts opt_parser
  end
end

opt_parser.parse!

case
when "1"
  One.run
else
  puts "no such problem exists."
end
