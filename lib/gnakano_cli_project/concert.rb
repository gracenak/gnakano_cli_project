class GnakanoCliProject::Concert
  
  attr_accessor :name, :date, :description, :event_time, :program, :bio, :ticket_info
  
  @@all = []
  
  def initialize(name, location)
    @name = name
    @location = location 
    @concerts = []
    save
    end
    
  def save
     @@all << self
  end
  
  def self.all
    @@all
  end

    def self.load_data
        Brewery::Scraper.new.load
        #I've opened the webpage
        #parsed it with Nokogiri for each brewery
        #I have instantiated an instance of a brewery with the corresponding data
        #when I instantiate a brewery, it must remember all the breweries
        #

    end

  def self.find_by_concert(name)
    @@all.find {|concert|concert.name == name}
  end
    
#     def self.new_from_index_page(brewery)
#         self.new(
#           brewery.css("h2").text
#     students_array.each do |student|
#       Student.new(student)
#     end
#   end

#   def add_student_attributes(attributes_hash)
#     # binding.pry
#     attributes_hash.each do |k,v|
#       self.send("#{k}=", v)
#     end
#   end
    
  
  def self.find 

  end
end