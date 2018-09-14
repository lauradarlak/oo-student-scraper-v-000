require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    # Opens a file and reads it into a variable
    html = File.read('fixtures/student-site/index.html')

    student_index = Nokogiri::HTML(html)

    students = {}

    # Iterate through the students

    binding.pry

  end

  

  def self.scrape_profile_page(profile_url)

  end

end
self.scrape_index_page(index_url)