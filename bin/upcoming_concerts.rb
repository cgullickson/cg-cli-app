require_relative "bundler/setup"
require_relative "upcoming_concerts/cli"

UpcomingConcerts::CLI.new.call
