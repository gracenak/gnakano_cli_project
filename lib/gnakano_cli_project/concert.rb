class GnakanoCliProject::Concert
  
  attr_accessor :name, :date, :url, :description, :event_time, :program, :bio, :ticket_info
  
  @@all = []
  
  def initialize(name, date)
    @name = name
    @date = date
    @url = url
    @concerts = []
    save
  end
    
  
  def save
     @@all << self
  end

  def self.all
    GnakanoCliProject::Scraper.load if @@all.empty?
    @@all
  end
  
  def get_concerts
    GnakanoCliProject::Scraper.scrape_concerts(self) if @concerts.empty?
  end

  
  def self.create(concert_array)
    concert_array.each do |concert|
      Concert.new(concert)
    end
  end
  
  #   GnakanoCliProject::Scraper.scrape_concerts_by_index(self) if @concerts.empty?
  #   @concerts
  #   end
  # end

  def self.find_by_concert(name)
   # @@all.find {|concert|concert.name == name}
   concert = Concert.new
    @name = "Juilliard"
    @date = "July 4"
    @description = "This is going to be awesome"
   concert
  end
  
  def get_concert_details
    GnakanoCliProject::Scraper.scrape_concerts_by_index(self) if @description.empty? 
  end

  def event_time
    @event_time ||= concert.css("h2.event-subtitle").text.gsub("Saturday, October 17, 2020", "").strip
  end
    
#     def self.new_from_index_page(brewery)
#         self.new(
#           brewery.css("h2").text
#     students_array.each do |student|
#       Student.new(student)
   end
 

