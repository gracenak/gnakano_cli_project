class GnakanoCliProject::Scraper

  URL = "https://arizonachambermusic.org/tickets/"

  def self.load
    doc = Nokogiri::HTML(open('https://arizonachambermusic.org/tickets/'))
    section = doc.css("div#content.site-content")
    concerts = section.css("article.event.event-list-item")

    concerts.each do |concert|
    name = concert.css("h1.event-title").text
    date = concert.css("h2.event-subtitle").text
    url = concert.css("a.event-list-item-link").attribute("href").value

    GnakanoCliProject::Concert.new(name, date, url)
    end
  end


    #I've opened the webpage
    #parsed it with Nokogiri for each concert
     #I have instantiated an instance of a concert with the corresponding data
 

    def self.scrape_concert_page(url)
     
      scraped_concert = {}
      artist = Nokogiri::HTML(open(url))
     
      scraped_concert[:event_time] = artist.css("h2.event-subtitle").text
      scraped_concert[:program] = artist.css("ul.list-unstyled.list-pieces").text.strip
      scraped_concert[:ticket_info] = artist.css("div.panel.text-sans").text
      
      scraped_concert

      binding.pry
       
      # scraped_concert[:event_time] = info.css("h2.event-subtitle").text.gsub("Saturday, October 17, 2020", "").strip
    #   scraped_concert[:program] = info.css("ul.list-unstyled.list-pieces").text.strip
    #   scraped_concert[:bio] = doc.css("div.text-serif").text
    #   scraped_concert[:ticket_info] = doc.css("div.panel.text-sans").text
    # end
    #   scraped_concert
    end
  end