require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  def get_page
    html = open("https://flatironschool.com/")
    Nokogiri::HTML(html)
    @doc = Nokogiri::HTML(html)
  end
  def get_courses
    html = open("https://flatironschool.com/")
    doc = Nokogiri::HTML(html)
    course_offerings=doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
    # puts course_offerings
  end
  def make_courses
  end
  
end



