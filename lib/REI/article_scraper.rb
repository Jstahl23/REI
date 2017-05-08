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
    puts "Choose an article:".colorize(:yellow)
    puts "0. Return to menu".colorize(:yellow)
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}".colorize(:yellow)
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
    puts "Choose an article:".colorize(:yellow)
    puts "0. Return to menu".colorize(:yellow)
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}".colorize(:yellow)
    end
  end
  #--------------------------------------------------------

  #-------------- Page 3 --------------------------------
  def self.scrape_page_three
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/page/3/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    puts "Choose an article:".colorize(:yellow)
    puts "0. Return to menu".colorize(:yellow)
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}".colorize(:yellow)
    end
  end
  #--------------------------------------------------------

  #-------------- Page 4 --------------------------------
  def self.scrape_page_four
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/page/4/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    puts "Choose an article:".colorize(:yellow)
    puts "0. Return to menu".colorize(:yellow)
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}".colorize(:yellow)
    end
  end
  #--------------------------------------------------------

  #-------------- Page 5 --------------------------------
  def self.scrape_page_five
    article = []

    doc = Nokogiri::HTML(open('http://realestateinyourtwenties.com/blog/page/5/'))
    doc.css('div.hfeed h2 a').each do |title|
      article << title.text
    end
    puts "Choose an article:".colorize(:yellow)
    puts "0. Return to menu".colorize(:yellow)
    article.each.with_index(1) do |title, i|
      puts "#{i}. #{title}".colorize(:yellow)
    end
  end
  #--------------------------------------------------------
end
