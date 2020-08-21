$ gnakano_cli_project

> To see a list of open breweries, type 'list breweries'
> puts 'list breweries'

> Which brewery would you like more information on?
> puts input = gets.strip

brewery = LocalBrewery.find(input.to_i)
print_brewery(brewery)

puts ""
> Would you like to check out another brewery?
> Enter Y or N

input = get.input.downcase

Brewery #=> Controller
- initialize
- gets input
- delegates to menu choice

Data:
name: <h2><span style="color: #ff0000;">1912 Brewing Company</span></h2>
location: <h5>2045 Forbes Blvd. Ste. 105</h5>
instagram: <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/CAYT_exhHcB/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
<div style="padding:16px;"> <a href="https://www.instagram.com/p/CAYT_exhHcB/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> </p>
details: <p><strong>1912 Brewing Company</strong> is currently open with limited hours and you&#8217;re welcome to have a drink inside their taproom — six feet apart, of course. <strong>Daniela&#8217;s Cooking </strong>is often posted out in front, too, giving you another way to support local.</p>
website_url: a href="http://1912brewing.com" 


Brewery.find
Brewery.print_brewery
Brewery instances with name and details






Scraper #=> Model
- pulling data from source
- parsing it
- matching user's query
- displaying a list of local breweries and specific requests


#!/usr/bin/env ruby

require "bundler/setup"
require "gnakano_cli_project"


GnakanoCliProject::Menu.new.start









