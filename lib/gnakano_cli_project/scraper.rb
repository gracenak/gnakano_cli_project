class GnakanoCliProject::Scraper

attr_accessor :url

  def self.load
    doc = Nokogiri::HTML(open('https://arizonachambermusic.org/tickets/'))
    section = doc.css("div#content.site-content")
    concerts = section.css("article.event.event-list-item")

    concerts.each do |concert|
    name = concert.css("h1.event-title").text
    date = concert.css("h2.event-subtitle").text
    info = concert.css("p").text
    url = concert.css("a.event-list-item-link").attribute("href").value

    GnakanoCliProject::Concert.new(name, date, info, url)
    end
  end
    #I've opened the webpage
    #parsed it with Nokogiri for each concert
     #I have instantiated an instance of a concert with the corresponding data

    #  def page
    #     @page ||= Nokogiri::HTML(open("https://arizonachambermusic.org/events/#{name}"))
    #  end

    #  def event_time
    #   @event_time ||= page.css("h2.event-subtitle").text
    #  end

  #   @concerts.each_with_index do |concert, index|
  #     puts "#{index + 1}. #{concert.name}"
  # end

    def self.scrape_concert_page
      GnakanoCliProject::Concert.all.each.with_index(1) do |concert, i|
        # if chosen_concert == i.to_s
          name_url = GnakanoCliProject::Concert.all[i-1]
          binding.pry
        # end
        
      end
      name_url = GnakanoCliProject::Concert.all[0].name.downcase.gsub(" ", "-")
      page = Nokogiri::HTML(open("https://arizonachambermusic.org/events/#{GnakanoCliProject::Concert.all[0].name.downcase.gsub(" ", "-")}/"))
     
      page.each do |info|
        @event_time = info.css("h2.event-subtitle").text
        @program = info.css("ul.list-unstyled.list-pieces").text.gsub("\r\n ", "")
        
      end
      
    end
      
      
 
    end
