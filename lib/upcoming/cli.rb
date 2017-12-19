
class Upcoming::CLI

  def call
    list_concerts
    menu
    goodbye
  end

  def list_concerts

    puts "Denver's Upcoming Concerts:"
    @concerts = Upcoming::Concert.today
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.artist} - #{concert.date}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Which concert would you like more information about? Please enter 1-5, or enter list concerts"
      input = gets.strip.downcase
      if input.to_i > 0
        the_concert = @concerts[input.to_i - 1]
        puts "#{i}. #{concert.artist} - #{concert.date} - #{concert.price} - #{concert.showtime} - #{concert.ticket-url}"
      elsif input == "list concerts"
        list_concerts
      else
        puts "Not sure what you want, please enter 1-5, list deals, or exit"
      end
    end
  end

end
