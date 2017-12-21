class Upcoming::Scraper

  attr_accessor :doc

  def scrape_concerts

    counter = 1

    @doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    @doc.css("li.list-result").each do |concert_li|

      concert = Upcoming::Concert.new

      concert.artist = concert_li.css(".title").text
      concert.showtime = concert_li.css(".time").text.strip
      concert.location = concert_li.css(".location").text.strip
      concert.price = concert_li.css(".price").text
      if concert_li.css(".title").css("a").text == ""
        concert.ticket_url = nil
      else
        concert.ticket_url = "westword.com" + concert_li.css(".title").css("a").attr("href").value
      end

      concert.save
      counter += 1

    end
  end
end
