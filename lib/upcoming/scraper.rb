class Upcoming::Scraper

  attr_accessor :doc

  def scrape_concerts
    @doc = Nokogiri::HTML(open("http://www.westword.com/concerts"))

    @doc.css("li.list-result").each do |concert_li|

      artist = concert_li.css(".title").text
      showtime = concert_li.css(".time").text.strip
      location = concert_li.css(".location").text.strip
      price = concert_li.css(".price").text
      if concert_li.css(".title").css("a").text == ""
        ticket_url = nil
      else
        ticket_url = "westword.com" + concert_li.css(".title").css("a").attr("href").value
      end

      Upcoming::Concert.new(artist, showtime, location, price, ticket_url)

    end
  end
end
