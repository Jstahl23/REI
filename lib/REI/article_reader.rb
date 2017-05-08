require 'open-uri'
require 'pry'
require 'nokogiri'

class Article_Reader
  
  def first_story
    stories = []

    doc = Nokogiri::HTML(open("http://realestateinyourtwenties.com/blog/"))
    doc.css('div.hfeed div#post-2321 p').each do |a|
      body = a.text 
      stories << body
    end
    stories.each do |a|
      puts <<-DOC
    #{a}
      DOC
    end
  end
  
end