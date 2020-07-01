#!/usr/bin/env ruby

require "optparse"
require "date"
require "bundler/setup"

require "euler/problem"

module Euler

  def class_exists?(class_name)
    klass = Module.const_get(class_name)
    return klass.is_a?(Class)
  rescue NameError
    return false
  end

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

  problem = ARGV[0].to_i.humanize.capitalize

  elapsed = Benchmark.measure do
    abort "no such problem" unless class_exists problem
    klass = Object.const_get(problem)

    # abort "problem has no 'run' function" unless klass.const_get('run')
    klass.run
  end

  puts
  puts elapsed if verbose

  exit 0
end
