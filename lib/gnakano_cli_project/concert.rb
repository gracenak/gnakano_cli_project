class GnakanoCliProject::Concert
  
  attr_accessor :name, :date, :url, :description, :event_time, :program, :bio, :ticket_info
  
  @@all = []
  
  def initialize(name, date, url)
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
  
  # def get_concerts
  #   GnakanoCliProject::Scraper.scrape_concerts(self) if @concerts.empty?
  # end

  def self.find_by_concert(name)
    @@all.find {|concert|concert.name == name}
  end

  
  def add_concert_details(concert_hash)
    concert_hash.each do |k, v|
      self.send("#{k}=", v)
    end
  end

#     def self.new_from_index_page(brewery)
#         self.new(
#           brewery.css("h2").text
#     students_array.each do |student|
#       Student.new(student)
   end
 