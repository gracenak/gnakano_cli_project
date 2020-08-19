require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'pry'

class Brewery
  
  attr_accessor :name, :location, :instagram, :details, :hours, :website_url, :contact
  
  @@all = []
  
  def initialize(brewery_hash)
    brewery_hash.each do |k,v|
      self.send ("#{k}=", v)
      @@all << save
    end
    
    #name: brewery.css("span").text
    #location: brewery.css("h5").text
    #instagram: brewery.css(".ViewProfileButton").a("href").value
    #details: brewery.css("p").text
    #hours: 
    #website_url:
    #contact: 
    
      def self.new_from_index_page(brewery)
        self.new(
          brewery.css("h2").text
          https://www.visittucson.org/visit/food-drink/breweries-tap-houses/tucsons-top-ten-beers/#{r.attribute("href").text}"
    students_array.each do |student|
      Student.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    # binding.pry
    attributes_hash.each do |k,v|
      self.send("#{k}=", v)
    end
  end

    def self.all
    @@all 
  end
end
    
    
    
  def self.all
    @@all
  end
  
  def self.find 