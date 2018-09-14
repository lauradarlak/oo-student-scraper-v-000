require 'nokogiri'
require 'open-uri'
require 'pry'

# students: student_index.css("div.student-card")
# name: student.css("h4.student-name").text
# location: student.css("p.student-location").text


class Scraper

  def self.scrape_index_page(index_url)
    # Opens a file and reads it into a variable
    html = File.read('fixtures/student-site/index.html')
    student_index = Nokogiri::HTML(html)



    # Iterate through the students
    student_index.css("div.student-card").each do |student|
      students = {
        :name => student.css("h4.student-name").text,
        :location => student.css("p.student-location").text,
        :profile_url => ("a").text
      }
    end
    students
    binding.pry

  end

  def self.scrape_profile_page(profile_url)

  end

end
