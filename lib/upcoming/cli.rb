class Upcoming::CLI

  def call
    puts "Tonight's Biggest Concerts in Denver:"
    list_concerts
    Upcoming::Scraper.new.scrape_concerts
    menu
    goodbye
  end

  def list_concerts
    @concerts = Upcoming::Concert.all
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.artist}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Which concert would you like more information about? "
      puts "Please enter 1-5, list concerts, or exit."
      input = gets.strip.downcase

      if input.to_i - 1 <= @concerts.size
        concert = @concerts[input.to_i - 1]
        puts "#{input}. #{concert.artist} - #{concert.price} - #{concert.showtime} - #{concert.location}"
        puts "For artist info and ticketing information,"
        puts "visit #{concert.ticket_url}"
        puts ""
      elsif input == "list concerts"
        list_concerts
      elsif input == "exit"
        nil
      else
        puts "Please enter 1-5, list deals, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you, enjoy the show!"
  end

end
