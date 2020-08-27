class GnakanoCliProject::Scraper

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
end