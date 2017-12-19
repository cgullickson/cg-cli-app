class Upcoming::CLI

  def call
    list_concerts
    menu
    goodbye
  end

  def list_concerts

    puts "Tonight's Biggest Concerts in Denver:"
    @concerts = Upcoming::Concert.today
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

      if input.to_i > 0
        concert = @concerts[input.to_i - 1]
        puts "#{input}. #{concert.artist} - #{concert.price} - #{concert.showtime} - #{concert.location}"
        puts "For more info and ticketing information,"
        puts "visit #{concert.ticket_url}"
      elsif input == "list concerts"
        list_concerts
      elsif input == "exit"
        nil
      else
        puts "Not sure what you want, please enter 1-5, list deals, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you, enjoy the show!"
  end

end
