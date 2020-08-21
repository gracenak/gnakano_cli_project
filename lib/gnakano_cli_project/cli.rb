class GnakanoCliProject::Cli

URL = "https://tucsonfoodie.com/2020/05/21/local-brews-to-go/"
    
    def start
        puts "+----------------------------------------------------------+"
        puts "|   Welcome to a list of open local breweries in Tucson!   |"
        puts "+----------------------------------------------------------+"
        main_menu
        list_breweries
    end

    def main_menu
        puts ""
        puts "To see a list of open local breweries, type 'list'"
        input = gets.strip
        list_breweries(input)

        puts ""
        puts "To find out more information about a specific brewery, enter the number"
        input = gets.strip.to_i
        print_brewery(brewery)

        puts "Would you like to check out another brewery, type 'y' or 'n'?"
        input = gets.strip.downcase
        if input == "y"
            list_breweries(input)
        elsif input == "n"
            puts ""
            puts "Thanks for checking out our list of open local breweries!"


        puts "To exit, type 'exit'"
        input = gets.strip


        case input

        when 'list'
        self.list_breweries

        when 'exit'
        puts "Thanks for supporting our local breweries! Goodbye!"
            
        else
            "Please type in a valid request"
        end
        end
    end

    def list_breweries(brewery)
        Brewery.all.sort {|a,b| a.name <=> b.name}.each_with_index do |brewery|
            puts "#{i + 1}. #{brewery.name}"

        end
    end

    def print_brewery(brewery)
        puts ""
        puts "==========#{brewery.name}=========="
        puts ""
        puts "Location:   #{brewery.location}"
        puts "Instagram:  #{brewery.instagram}"
        puts "Contact:    #{brewery.contact}"
        puts "Hours:      #{brewery.hours}"
        puts "==============About Us=============="
        puts "Details:    #{brewery.details}" 
        puts ""
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

