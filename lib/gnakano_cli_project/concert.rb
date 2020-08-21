module GnakanoCliProject
    class Brewery
  
  attr_accessor :name, :location, :instagram, :details, :hours, :website_url, :contact
  
  @@all = ["a", "b", "c"]
  
  def initialize(name, location, url)
    @name = name
    @location = location 
    @url = url
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

    def self.find(name)
        brewery = Brewery.new
        brewery.name = ""
        brewery.location = ""
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
    
    
  def self.all
    @@all
  end
  
  def self.find 

  end
end
end