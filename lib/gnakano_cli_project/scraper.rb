class GnakanoCliProject::Scraper

  URL = "https://arizonachambermusic.org/tickets/"

  def self.load
    doc = Nokogiri::HTML(open('https://arizonachambermusic.org/tickets/'))
    section = doc.css("div#content.site-content")
    concerts = section.css("a.event-list-item-link")

    concerts.each do |concert|
    name = concert.css("h1.event-title").text
    date = concert.css("h2.event-subtitle").text

    GnakanoCliProject::Concert.new(name, date)
    end
  end

    #I've opened the webpage
    #parsed it with Nokogiri for each concert
     #I have instantiated an instance of a concert with the corresponding data

    def self.scrape_concert_page(concert)
     
      scraped_concert = {}
      url = Nokogiri::HTML(open(concert.url))
      page = event.css("section#singleEvent.single-event.pt2")
      binding.pry
       
      scraped_concert[:event_time] = info.css("h2.event-subtitle").text.gsub("Saturday, October 17, 2020", "").strip
    #   scraped_concert[:program] = info.css("ul.list-unstyled.list-pieces").text.strip
    #   scraped_concert[:bio] = doc.css("div.text-serif").text
    #   scraped_concert[:ticket_info] = doc.css("div.panel.text-sans").text
    # end
    #   scraped_concert
    end
  end

