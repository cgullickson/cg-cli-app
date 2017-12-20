class Upcoming::Scraper

  def scrape_concerts

  @doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

  @doc.search("li.list-result"). each do |concert_li|
    concert = Upcoming::Concert.new

    concert.artist = doc.css(".title").text
    concert.showtime = doc.css(".time").text.strip
    concert.location = doc.css(".location").text.strip
    concert.price = doc.css(".price").text
    concert.ticket_url = "westword.com" + doc.css(".title").css("a").attr("href").va
    
    end

  concerts

  end
