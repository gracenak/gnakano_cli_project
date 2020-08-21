class GnakanoCliProject::Scraper

  URL = "https://arizonachambermusic.org/tickets/"

  def load
    index = Nokogiri::HTML(open('https://arizonachambermusic.org/tickets/'))
    binding.pry
    #I've opened the webpage
    #parsed it with Nokogiri for each concert
    #I have instantiated an instance of a concert with the corresponding data
  end
end
      

  # def self.scrape_by_index(index_url)
  #   binding.pry
  #   @concerts = []
  #     self.load.css("div.post_content").each |concert|

  #     concert_hash  = {}
  #     concert_hash[:name] = concert.css("h1.event-title").text
  #     concert_hash[:date] = concert.css("h2.event-subtitle").text
  #     concert_hash[:description] = concert.css("p").text

  #     concerts << concert_hash
  #     end
  #   concerts
  # end

  # def self.scrape_concert_page(concert_url)
  #   scraped_concert = {}
  #     concert = Nokogiri::HTML(open(concert_url))
  #     #scraped_concert[:artist_name] = profile.css("h1.event-title").text
  #     scraped_concert[:event_time] = profile.css("h2.event-subtitle").text
  #     scraped_concert[:program] = profile.css("ul.list-unstyled.list-pieces").text
  #     scraped_concert[:bio] = doc.css("div.text-serif").text
  #     scraped_concert[:ticket_info] = doc.css("div.panel.text-sans").text
  #     scraped_concert
  #   end
