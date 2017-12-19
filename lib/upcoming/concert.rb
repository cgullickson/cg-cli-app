require 'pry'

class Upcoming::Concert
  attr_accessor :artist, :showtime, :price, :ticket_url, :date, :location

  def initialize

  end

  def self.today
    #return upcoming Concert
    self.scrape_concerts

  end

  def self.scrape_concerts

    concerts = []

    concerts  << self.scrape_concert_1
    concerts << self.scrape_concert_2
    concerts << self.scrape_concert_3
    concerts << self.scrape_concert_4
    concerts << self.scrape_concert_5

    concerts

  end

  def self.scrape_concert_1

    doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    concert_1 = self.new
    concert_1.artist = doc.css(".title")[1].text
    concert_1.showtime = doc.css(".time")[1].text.strip
    concert_1.location = doc.css(".location")[1].text.strip
    concert_1.price = doc.css(".price")[1].text
    concert_1.ticket_url = "westword.com" + doc.css(".title").css("a").attr("href").value

    concert_1

  end

  def self.scrape_concert_2

    doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    concert_2 = self.new
    concert_2.artist = doc.css(".title")[2].text
    concert_2.showtime = doc.css(".time")[2].text.strip
    concert_2.location = doc.css(".location")[2].text.strip
    concert_2.price = doc.css(".price")[2].text
    concert_2.ticket_url = "westword.com" + doc.css(".title")[2].css("a").attr("href").value

    concert_2

  end

  def self.scrape_concert_3

    doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    concert_3 = self.new
    concert_3.artist = doc.css(".title")[3].text
    concert_3.showtime = doc.css(".time")[3].text.strip
    concert_3.location = doc.css(".location")[3].text.strip
    concert_3.price = doc.css(".price")[3].text
    concert_3.ticket_url = "westword.com" + doc.css(".title")[3].css("a").attr("href").value

    concert_3

  end

  def self.scrape_concert_4

    doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    concert_4 = self.new
    concert_4.artist = doc.css(".title")[4].text
    concert_4.showtime = doc.css(".time")[4].text.strip
    concert_4.location = doc.css(".location")[4].text.strip
    concert_4.price = doc.css(".price")[4].text
    concert_4.ticket_url = "westword.com" + doc.css(".title")[4].css("a").attr("href").value

    concert_4

  end

  def self.scrape_concert_5

    doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    concert_5 = self.new
    concert_5.artist = doc.css(".title")[5].text
    concert_5.showtime = doc.css(".time")[5].text.strip
    concert_5.location = doc.css(".location")[5].text.strip
    concert_5.price = doc.css(".price")[5].text
    concert_5.ticket_url = "westword.com" + doc.css(".title")[5].css("a").attr("href").value

    concert_5

  end

end
