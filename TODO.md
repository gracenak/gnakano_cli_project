$concerts
        
> Here are a list of concerts
   - #list_concerts

> Which concert would you like to know more about? (Enter number between 1-13)
> input = gets.strip.to_i
    - print_concerts(chosen_concert)

> Would you like to check out another concert? (Y/N)
> input = gets.strip.upcase

> y
> return to #list_concerts

> n
> "Thanks for checking us out, goodbye!"



ConcertInfo # => Model
- pulling data from source
- parsing it
- matching user's entry
- displaying the specific info

Cli # => Controller
- #start
    - initial options
    - gets input
    - delegates to user choice
- #menu
    - gives user more options, to check out another concert
    - exit


Requirements:

Data Source = "https://arizonachambermusic.org/tickets/"

Cli = communicates with the data souce for information

CONCERTS

URL = https://arizonachambermusic.org/tickets/

date: concert.css("h2.event-subtitle").text
name: concert.css("h1.event-title").text
details: concert.css("p").text





1. Basic Flow Chart
2. Variable scopes, instance methods, class methods
3. Instantiate and initialize #new
4. Self 
5. Class
6. Return methods
7. Iterating collections with #each


Classes:
> concert
> cli
> scraper

Environment file:
> environment.rb

Bin:
> gnakano_cli_project (executable file)
