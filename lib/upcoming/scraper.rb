class Upcoming::Scraper

  attr_accessor :doc

  def scrape_concerts

    counter = 1

    @doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    @doc.css("li.list-result").each do |concert_li|

      concert = Upcoming::Concert.new

      concert.artist = doc.css(".title")[counter].text
      concert.showtime = doc.css(".time")[counter].text.strip
      concert.location = doc.css(".location")[counter].text.strip
      concert.price = doc.css(".price")[counter].text
      concert.ticket_url = "westword.com" + doc.css(".title")[counter].css("a").attr("href").value

      concert.save
      counter += 1

    end
  end
end
