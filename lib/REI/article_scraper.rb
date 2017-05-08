require 'open-uri'
require 'pry'
require 'nokogiri'

class Article_Scraper



  #--------------- Page 1 -----------------------------
  def self.scrape_page_one
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    puts "Choose an article:"
    puts "0. Return to menu"
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}"
    end
  end
  #------------------------------------------------------

  #-------------- Page 2 --------------------------------
  def self.scrape_page_two
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/page/2/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    puts "Choose an article:"
    puts "0. Return to menu"
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}"
    end
  end

end
