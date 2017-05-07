require 'open-uri'
require 'pry'
require 'nokogiri'

class Article_Scraper

  def self.scrape_titles
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    article.each_with_index do |title, i|
      puts "#{i}. #{title}"
    end
  end

end
