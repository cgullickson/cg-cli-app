require 'pry'

class Upcoming::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :date

  def initialize

  end

  def self.today
    #return upcoming Concerts
    @concerts  << self.scrape_ogden
    @concerts << self.scrape_fillmore
    @concerts << self.scrape_beonkeys

    @concerts

  end

  def self.scrape_ogden

    doc = Nokogiri::HTML(open("https://www.ogdentheatre.com/events"))

    binding.pry

  end

  def self.scrape_fillmore

    doc = Nokogiri::HTML(open)

  end

  def self.scrape_beonkeys

    doc = Nokogiri::HTML(open)

  end

end
