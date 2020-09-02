class GnakanoCliProject::Cli
        
    def start
        puts "+-----------------------------------------------------------+"
        puts "|  Welcome to Arizona Friends of Chamber Music Concerts!🎻  |"
        puts "+-----------------------------------------------------------+"
        get_concerts
        list_concerts
        get_user_concert
        menu
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
    
        
    def valid_input(chosen_concert, data)
            chosen_concert.to_i <= data.length && chosen_concert.to_i > 0
        end  
       
    
    def print_concert(chosen_concert)
        concert = @concerts[chosen_concert -1]
        # binding.pry
    
        puts ""
        puts "============#{concert.name}============"
        puts "Date:"       
        puts "#{concert.date}"
        puts "\nTeaser Info:\n"  
        puts "#{concert.info}"
        puts ""
        puts "-------- For More Info: --------"
        puts "#{concert.url}"   
    end

    def menu
        puts input = ""
        while input != "N"
            
        puts "\nWould you like check out another concert? Enter Y or N."
        input = gets.strip.upcase
        until input == "Y" || input == "N"
        puts "Invalid input. Enter Y or N."
        input = gets.strip.upcase
        end

        if input == "Y"
            list_concerts
            get_user_concert 
        elsif input == "N"
            puts "-------------------------------------"
            puts " Thanks for checking us out. Cheers! "
            puts "-------------------------------------"
        end
    end
end