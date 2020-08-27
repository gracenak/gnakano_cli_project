$concerts

> Welcome! Would you like to see a list of concerts? (y/n)
> input = gets.strip.downcase

    > y         
> Awesome! Here are a list of concerts
   - #list_concerts

> Which concert would you like to know more about? (Enter number between 1-13)
> input = gets.strip.to_i
    - print_concerts(concert)

> Would you like to check out another concert? (y/n)
> input = gets.strip.downcase

> y
> return to #start

> n
> "Thanks for checking us out, goodbye!"



ConcertInfo # => Model
- pulling data from source
- parsing it
- matching user's entry
- displaying the specific info

Cli # => Controller
- #start
- main menu
    - initial options
    - gets input
    - delegates to user choice

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
> concerts
> menu
> scraper

Environment file:
> environment.rb

Bin:
> 

  def self.find_by_concert(name)
    @@all.find {|concert|concert.name == name}
  end

  doc = Nokogiri::HTML(open(url))
      url = "https://arizonachambermusic.org/events/#{name.url}"
      scraped_concert = {}
      artists = Nokogiri::HTML(open(url))
      artists.each do |artist|
      scraped_concert[:event_time] = artist.css("h2.event-subtitle").text
      # scraped_concert[:event_time] = info.css("h2.event-subtitle").text.gsub("Saturday, October 17, 2020", "").strip
      scraped_concert[:program] = artist.css("ul.list-unstyled.list-pieces").text.strip
      scraped_concert[:ticket_info] = artist.css("div.panel.text-sans").text
  
      scraped_concert
