require_relative "bundler/setup"
require_relative "upcoming_concerts.rb"

UpcomingConcerts::CLI.new.call
