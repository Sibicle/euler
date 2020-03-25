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

problem = ARGV[0].to_i.humanize.capitalize
cmd = problem + ".run"

begin
  eval cmd
rescue NameError
  STDERR.puts "no such class #{problem}."
  exit 1
rescue NoMethodError
  STDERR.puts "no 'run' method in #{problem} class."
  exit 1
end

exit 0
