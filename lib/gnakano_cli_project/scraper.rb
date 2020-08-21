class GnakanoCliProject::Scraper

    URL = "https://arizonachambermusic.org/tickets/"

    def load
      index = Nokogiri::HTML(open('https://arizonachambermusic.org/tickets/'))
      binding.pry
          #I've opened the webpage
          #parsed it with Nokogiri for each concert
          #I have instantiated an instance of a brewery with the corresponding data
    end
      
    def initialize
    # html = Nokogiri::HTML(open(url))

    # brewery = {}
  end

  def self.scrape_by_index(index_url)
    concerts = []
    self.load.css("div.post_content").each |concert|
      concert_hash  = {}
      concert_hash[:name] = concert.css("h1.event-title").text
      concert_hash[:date] = concert.css("h2.event-subtitle").text
      concert_hash[:description] = concert.css("p").text
      

    #hours: 
    #website_url:
    #contact: 
    



  end

  def load
    @doc = Nokogiri::HTML(open('https://tucsonfoodie.com/2020/05/21/local-brews-to-go/'))
    binding.pry
        #I've opened the webpage
        #parsed it with Nokogiri for each brewery
        #I have instantiated an instance of a brewery with the corresponding data
  end
end
