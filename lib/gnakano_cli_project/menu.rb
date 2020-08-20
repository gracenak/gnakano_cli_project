module GnakanoCliProject
    class Menu
        

    def start
        main_menu
    end


    def main_menu
        puts "To recieve a list of open local breweries, type 'list'"
        binding.pry
        puts "To exit, type 'exit'"

        input = gets.strip

        case input
        when 'list'
        self.list_breweries
        when 'exit'
        puts "Goodbye!"
        end
    end

    def list_breweries
        puts "Enter Choice Number of the brewery you would like to know more about"

        input = gets.strip
        brewery = Brewery.find(input.to_i)

        print_brewery(brewery)

        main_menu
        end
    end