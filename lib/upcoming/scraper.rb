class Upcoming::Scraper

  attr_accessor :doc

  def scrape_concerts

    counter = 1

    @doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    @doc.css("li.list-result").each do |concert_li|

      concert = Upcoming::Concert.new

      concert.artist = concert_li.css(".title")[counter].text
      concert.showtime = concert_li.css(".time")[counter].text.strip
      concert.location = concert_li.css(".location")[counter].text.strip
      concert.price = concert_li.css(".price")[counter].text
      concert.ticket_url = "westword.com" + concert_li.css(".title")[counter].css("a").attr("href").value

      concert.save
      counter += 1

    end
  end
end
