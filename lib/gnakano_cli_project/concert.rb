class GnakanoCliProject::Concert
  
  attr_accessor :name, :date, :info, :url 
  
  @@all = []
  
  def initialize(name, date, info, url)
    @name = name
    @date = date
    @info = info
    @url = url
    save
  end
  
  def save
     @@all << self
  end

  def self.all
    GnakanoCliProject::Scraper.load if @@all.empty?
    @@all
  end
end