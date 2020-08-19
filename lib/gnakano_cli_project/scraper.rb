require_relative "../lib/brewery.rb"
require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'pry'
class Scraper

    URL = https://tucsonfoodie.com/2020/05/21/local-brews-to-go/
      
    def initialize(url)
    html = Nokogiri::HTML(open(url))
binding.pry
    brewery = {}
  end
end
