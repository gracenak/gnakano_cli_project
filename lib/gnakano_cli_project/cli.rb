class GnakanoCliProject::Cli

URL = "https://arizonachambermusic.org/tickets/"
    
    def start
        puts "+---------------------------------------------------------+"
        puts "|  Welcome to Arizona Friends of Chamber Music Concerts!  |"
        puts "+---------------------------------------------------------+"
        # main_menu
        get_concerts
        list_concerts
        get_user_concert
    end

    # def main_menu
    #     puts ""
    #     puts "To see a list of concerts, type 'list'"
    #     input = gets.strip

    #     case input
    #     when 'list'
    #         puts get_advertised_concerts

        # puts ""
        # puts get_advertised_concerts
        # puts list_concerts
        # input = gets.strip

         

    #     puts ""
    #     puts "To exit, type 'exit'"
    #     input = gets.strip

    #     end
    # end
    
        # puts ""
        # puts "To find out more information about a specific concert, enter the number"
        # input = gets.strip.to_i
        # puts 

    #     # puts "Would you like to check out another concert, type 'y' or 'n'?"
    #     # input = gets.strip.downcase
    #     # if input == "y"
    #     #     list_concerts(input)
    #     # elsif input == "n"
    #     #     puts ""
    #     #     puts "Thanks for checking out our list of concerts!"

    #     # else
    #     puts "To exit, type 'exit'"
    #     input = gets.strip

    #     case input

    #     when 'list'
    #     self.list_concerts

    #     else
    #     puts "Thanks for checking out our list of concerts! Goodbye!"
    #     end
    # end
    # end

    def get_concerts
        #to be scraped
        @concerts = GnakanoCliProject::Concert.all

        
        
        ['Juilliard String Quartet', 'Pacifica Sting Quartet', 'Aragorn String Quartet']
    end

    # def get_user_concert
    #     #list concerts
    #     @concerts.each_with_index(1) do |concert, index| 
    #         puts "#{index}. #{concert}"
    #     end  
    # end


    def list_concerts
        puts "\nHere are a list of concerts:\n"
        @concerts.each_with_index do |concert, index|
            puts "#{index + 1}. #{concert.name}"
        end
    #     main_menu
     end

     def get_user_concert
        puts "\nWhich concert would you like to know more about? Enter a number.\n"
        chosen_concert = gets.strip.to_i
        # print_concerts(chosen_concert) if valid_input(chosen_concert, @concerts)
            
         end

        end
    #  end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    # def print_concerts(chosen_concert)
    #     concert = @concerts[chosen_concert]
    #     puts ""
    #     puts "==========#{concert.name}=========="
    #     puts ""
    #     puts "Date:         #{concert.date}"
    #     puts "Description:  #{concert.description}"
    #     puts "Contact:      #{concert.contact}"
    #     puts "Hours:      #{brewery.hours}"
    #     puts "==============About Us=============="
    #     puts "Details:    #{concert.details}" 
    #     puts ""
    
    # end

    # puts ""
    #     puts "To find out more information about a specific brewery, enter the number"
    #     input = gets.strip.to_i
    #     puts "Would you like to check out another brewery"


#         puts "Enter Choice Number of the brewery you would like to know more about"

#         input = gets.strip
#         brewery = Brewery.find(input.to_i)

#         print_brewery(brewery)

#         main_menu
# end