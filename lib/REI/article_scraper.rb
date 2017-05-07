require 'open-uri'
require 'pry'
require 'nokogiri'

article = []

doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/'))
doc.css('div.hfeed h2 a').each do |title|
  article << title.text
end
article
