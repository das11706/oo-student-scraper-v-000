require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    # html = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    # doc = Nokogiri::HTML(html)

    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
    array = doc.css(".roster-cards-container")
    hash = Hash[array.collect { |key, value| [name, name.css(".student-name")] }

    # ,
    #   item, location.css(".student-location"), item, profile_url.css(".student-card")] }

    # {:name => "Abby Smith", :location => "Brooklyn, NY", :profile_url => "students/abby-smith.html"},

  end

  # def self.scrape_profile_page(profile_url)
  #
  # end

end
