class GnakanoCliProject::Cli

URL = "https://tucsonfoodie.com/2020/05/21/local-brews-to-go/"
    
    def start
        puts "+---------------------------------------------------------+"
        puts "|  Welcome to Arizona Friends of Chamber Music Concerts!  |"
        puts "+---------------------------------------------------------+"
        main_menu
        list_concerts
    end

    def main_menu
        puts ""
        puts "To see a list of concerts, type 'list'"
        input = gets.strip
        list_concerts(input)

        puts ""
        puts "To find out more information about a specific concert, enter the number"
        input = gets.strip.to_i
        print_concerts(concert)

        puts "Would you like to check out another concert, type 'y' or 'n'?"
        input = gets.strip.downcase
        if input == "y"
            list_concerts(input)
        elsif input == "n"
            puts ""
            puts "Thanks for checking out our list of concerts!"


        puts "To exit, type 'exit'"
        input = gets.strip


        case input

        when 'list'
        self.list_concerts

        when 'exit'
        puts "Thanks for checking out our list of concerts! Goodbye!"
        end
    end
    end


    def list_concerts
        puts "Awesome! Here are a list of concerts"
        main_menu
    end

    def print_concerts(concert)
        puts ""
        puts "==========#{concert.name}=========="
        puts ""
        puts "Date:         #{concert.date}"
        puts "Description:  #{concert.description}"
        puts "Contact:      #{concert.contact}"
        puts "Hours:      #{brewery.hours}"
        puts "==============About Us=============="
        puts "Details:    #{brewery.details}" 
        puts ""
        main_menu
    end

    # puts ""
    #     puts "To find out more information about a specific brewery, enter the number"
    #     input = gets.strip.to_i
    #     puts "Would you like to check out another brewery"


#         puts "Enter Choice Number of the brewery you would like to know more about"

#         input = gets.strip
#         brewery = Brewery.find(input.to_i)

#         print_brewery(brewery)

#         main_menu
#         end
  end

