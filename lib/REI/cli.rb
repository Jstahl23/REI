require_relative '../REI/article_scraper.rb'
require 'colorize'
require 'nokogiri'

class REI_CLI
  def initialize
  end

  def call
    puts "--------------------------------------------------".colorize(:yellow)
    puts "                 Welcome to REI!!                 ".colorize(:green)
    puts "This program was created to use as a good resource".colorize(:green)
    puts "for information on Real Estate Investing.. ENJOY!!".colorize(:green)
    puts "--------------------------------------------------".colorize(:yellow)
    choose_website
  end

  def choose_website
    puts "          Please choose a page to visit:          ".colorize(:green)
    puts "                (Enter a number)                  ".colorize(:green)
    puts "--------------------------------------------------".colorize(:yellow)
    puts "1. Page 1".colorize(:green)
    puts "2. Page 2".colorize(:green)
    puts "3. Page 3".colorize(:green)
    puts "4. Page 4".colorize(:green)
    puts "5. Page 5".colorize(:green)
    puts "6. Resources".colorize(:green)
    puts ""
    menu
  end

  def menu
    input = nil
    while input != "exit"
      puts "                Enter a number to continue                   ".colorize(:green)
      puts "(input 'list' to see the menu or 'exit' to leave the program)".colorize(:green)
      input = gets.strip.downcase
      case input
      when "1"
        puts "Entering Real Estate In Your Twenties page 1..".colorize(:yellow)
        Article_Scraper.scrape_page_one
      when "2"
        puts "Entering Real Estate In Your Twenties page 2..".colorize(:yellow)
        Article_Scraper.scrape_page_two
      when "3"
        puts "Entering Real Estate In Your Twenties page 3..".colorize(:yellow)
        Article_Scraper.scrape_page_three
      when "4"
        puts "Entering Real Estate In Your Twenties page 4..".colorize(:yellow)
        Article_Scraper.scrape_page_four
      when "5"
        puts "Entering Real Estate In Your Twenties page 5..".colorize(:yellow)
        Article_Scraper.scrape_page_five
      when "6"
        puts "You can find these articles and more at http://realestateinyourtwenties.com/blog/".colorize(:yellow)
        puts "Another great website is https://www.biggerpockets.com/".colorize(:yellow)
      when "list"
        choose_website
      when "exit"
        goodbye
        exit
      else
        puts ""
        puts "----------------------------------------------------------------------".colorize(:red)
        puts "I did not understand that input, please enter 1 or 2, 'list' or 'exit'".colorize(:red)
        puts "----------------------------------------------------------------------".colorize(:red)
        puts ""
      end
    end
  end

  def goodbye
    puts ""
    puts "--------------------------------------------".colorize(:yellow)
    puts "   Thanks for using REI, see you later!!".colorize(:green)
    puts "--------------------------------------------".colorize(:yellow)
  end

end
