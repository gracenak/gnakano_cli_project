require_relative "./gnakano_cli_project/version"
require_relative "./gnakano_cli_project/menu"
require_relative "./gnakano_cli_project/brewery"
require_relative "./gnakano_cli_project/scraper"


require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'pry'

module GnakanoCliProject
  class Error < StandardError; end
  # Your code goes here...
end