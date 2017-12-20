require 'pry'

class Upcoming::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :location

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all 
  end

end
