class GnakanoCliProject::Cli

URL = "https://arizonachambermusic.org/tickets/"
    
    def start
        puts "+-----------------------------------------------------------+"
        puts "|  Welcome to Arizona Friends of Chamber Music Concerts!🎻  |"
        puts "+-----------------------------------------------------------+"
        # main_menu
        get_concerts
        list_concerts
        get_user_concert
    end

    def get_concerts
        @concerts = GnakanoCliProject::Concert.all
    end


    def list_concerts
        puts "\nHere are a list of concerts:\n"
        puts ""
        @concerts.each_with_index do |concert, index|
            puts "#{index + 1}. #{concert.name}"
        end
     end

    def get_user_concert
      puts "\nWhich concert would you like to know more about? Enter a number 1-13.\n"
      chosen_concert = gets.strip.to_i
      print_concert(chosen_concert) if valid_input(chosen_concert, @concerts)

      end
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end


    def print_concert(chosen_concert)
      concert = @concerts[chosen_concert]
        
        puts ""
        puts "==========#{concert.name}=========="
        puts "Date:           #{concert.date}"
        puts "Time:        #{concert.event_time}"
        # puts "\nBio:    #{concert.bio}\n"
        # puts "Contact:      #{concert.contact}"
        # puts "Hours:      #{brewery.hours}"
        # puts "==============About Us=============="
        # puts "Details:    #{concert.details}" 
        # puts ""
     end

 