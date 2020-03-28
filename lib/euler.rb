#!/usr/bin/env ruby

require "optparse"
require "date"

require "bundler/setup"
Bundler.require

Dir["./src/*.rb"].each {|file| require file }

NEWLINE = "\n"
options = {}
verbose = false

OptionParser.new do |opt|
  opt.banner = "Usage: euler PROBLEM [ARGUMENTS]"

  opt.on("-h","--help","help") do
    puts opt_parser
  end

  opt.on("-v","--verbose","verbose") do
    verbose = true;
  end
end.parse!

problem  = ARGV[0].to_i.humanize.capitalize


elapsed = Benchmark.measure do
  public_send problem + ".run"
end

puts
puts elapsed if verbose

exit 0
