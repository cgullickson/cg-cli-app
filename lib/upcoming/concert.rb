require 'pry'

class Upcoming::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :date

  def initialize

  end

  def self.today
    #return upcoming Concert
    self.scrape_concerts

  end

  def self.scrape_concerts

    concerts = []

    concerts  << self.scrape_ogden
    concerts << self.scrape_fillmore
    concerts << self.scrape_beonkeys

    concerts

  end

  def self.scrape_ogden

    doc = Nokogiri::HTML(open("http://www.google.com/search?q=ogden+calendar&oq=ogden+calendar&aqs=chrome..69i57.1939j0j7&sourceid=chrome&ie=UTF-8"))

    binding.pry

  end

  def self.scrape_fillmore

    doc = Nokogiri::HTML(open)

  end

  def self.scrape_beonkeys

    doc = Nokogiri::HTML(open)

  end

end
