require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./gnakano_cli_project/version"
require_relative "./gnakano_cli_project/cli"
require_relative "./gnakano_cli_project/concert"
require_relative "./gnakano_cli_project/scraper"


module GnakanoCliProject
  class Error < StandardError; end
  # Your code goes here...
end