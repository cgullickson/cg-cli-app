require_relative "bundler/setup"
require_relative "./lib/upcoming_concerts/upcoming_concerts.rb"

UpcomingConcerts::CLI.new.call
