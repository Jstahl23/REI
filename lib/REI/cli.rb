require_relative '../REI/article_scraper.rb'
require 'colorize'
require 'nokogiri'

class REI_CLI
  def initialize
  end

  def call 
    puts "---------------------------------------------".colorize(:yellow)
    puts "Welcome to REI!!".colorize(:green)
    puts "This program was created to help people break".colorize(:green)
    puts "into the Real Estate Investing game.. ENJOY!!".colorize(:green)
    puts "---------------------------------------------".colorize(:yellow)
    choose_website
  end

  def choose_website
    puts ""
    puts "---------------------------------".colorize(:yellow)
    puts "Please choose a website to visit:".colorize(:blue)
    puts "         (Enter 1 or 2)          ".colorize(:blue)
    puts "---------------------------------".colorize(:yellow)
    puts "1. Real Estate In Your Twenties".colorize(:light_blue)
    puts "2. Bigger Pockets".colorize(:light_blue)
    puts ""
    menu
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter 1 or 2 to continue".colorize(:green)
      puts "(input 'list' to see the menu or 'exit' to leave the program)".colorize(:green)
      input = gets.strip.downcase
      case input
      when "1"
        puts "Entering Real Estate In Your Twenties..".colorize(:light_blue)
        Article_Scraper.scrape_titles
      when "2"
        puts "Entering Bigger Pockets..".colorize(:light_blue)
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