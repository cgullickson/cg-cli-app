require "bundler/setup"
require "upcoming_concerts"
require "nokogiri"

class UpcomingConcerts::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :date

  def initialize

  end

  def self.today
    #return upcoming Concerts
    self.scrape_concerts

  end

end
