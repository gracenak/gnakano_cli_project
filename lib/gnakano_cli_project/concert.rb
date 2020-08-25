class GnakanoCliProject::Concert
  
  attr_accessor :name, :date, :info, :url, :description, :event_time, :program, :bio, :ticket_info
  
  @@all = []
  
  def initialize(name, date, info, url)
    @name = name
    @date = date
    @info = info
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
  
  def add_concert_details(concert_hash)
    concert_hash.each do |k, v|
      self.send("#{k}=", v)
    end
  end
end
