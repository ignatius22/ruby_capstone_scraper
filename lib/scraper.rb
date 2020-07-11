require 'nokogiri'
require 'httparty'
require 'byebug'
require 'pry'




# class Scraper
# attr_reader :url, :position , :company
# 	def initialize(position, company)
# 		@position = position.capitalize
# 		@company = company.capitalize
# 		@url = 'https://remotive.io'
# 	end

# 	def parse_url(url)
# 		unparse_url = HTTParty.get(url)
# 		Nokogiri::HTML(unparse_url)
# 	end

# 	def scrape
# 		parse_page = parse_url(@url)
# 		byebug
# 	end
# end



class Scrapper
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def scrape
    scraped_pages = []
    page_body = HTTParty.get(url).body
    doc = Nokogiri::HTML(page_body)
    doc.css('div.job-details').each do |node|
			scraped_pages << node
    end
    scraped_pages
  end
end


# job = Scrapper.new("ruby developer")

# job.scrape

