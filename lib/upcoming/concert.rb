require 'pry'

class Upcoming::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :location

  @@all = []

  def initialize(artist, showtime, price, ticket_url, location)
    @artist = artist
    @showtime = showtime
    @price = price
    @ticket_url = ticket_url
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

end
