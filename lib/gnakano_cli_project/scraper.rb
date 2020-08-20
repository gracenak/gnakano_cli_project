module GnakanoCliProject
    class Scraper

    # URL = https://tucsonfoodie.com/2020/05/21/local-brews-to-go/
      
    def initialize
    # html = Nokogiri::HTML(open(url))

    # brewery = {}
  end

  def load
    @doc = Nokogiri::HTML(open('https://tucsonfoodie.com/2020/05/21/local-brews-to-go/'))
    binding.pry
        #I've opened the webpage
        #parsed it with Nokogiri for each brewery
        #I have instantiated an instance of a brewery with the corresponding data
  end
end
end
