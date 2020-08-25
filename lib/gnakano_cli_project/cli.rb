class GnakanoCliProject::Cli

    URL = "https://arizonachambermusic.org/tickets/"
        
        def start
            puts "+-----------------------------------------------------------+"
            puts "|  Welcome to Arizona Friends of Chamber Music Concerts!🎻  |"
            puts "+-----------------------------------------------------------+"
            get_concerts
            list_concerts
            get_user_concert
            # add_details_to_concerts
            main_menu
        end

        def main_menu
            puts input = ""
            while input != "N"
            
            puts "\nWould you like check out another concert? Enter Y or N."
                input = gets.strip.upcase
            until input == "Y" || input == "N"
                puts "Enter Y or N."
                input = gets.strip.upcase
            end
            if input == "Y"
                list_concerts
                get_user_concert 
            elsif input == "N"
                puts "----------------------------------------------------"
                puts " Thanks for checking us out. Cheers till next time! "
                puts "----------------------------------------------------"
            else
                puts "Invalid input. Enter Y or N"
                list_concerts
            end
        end

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


        def add_details_to_concerts
            @concerts.each do |concert|
                details = GnakanoCliProject::Scraper.scrape_concert_page(artist)
                concert.add_concert_details(details)
            end
        end
    
        def print_concert(chosen_concert)
          concert = @concerts[chosen_concert -1]
    
            puts ""
            puts "==========#{concert.name}=========="
            puts "Date:           #{concert.date}"
            puts "Info:        #{concert.info}"
            puts "Link:          #{concert.url}"
            # puts "Time:        #{concert.event_time}"
            # puts "Program:    #{concert.program}"
            # puts "Bio:      #{concert.bio}"
            # puts "Tickets:      #{concert.ticket_info}"
         end

         
        


    

 