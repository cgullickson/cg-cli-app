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

  def self.scrape_ogden

    doc = Nokogiri::HTML(open(www.ogdentheatre.com/events))

    binding.pry

  end

  def self.scrape_fillmore

    doc = Nokogiri::HTML(open)

  end

  def self.scrape_beonkeys

    doc = Nokogiri::HTML(open)

  end

end
