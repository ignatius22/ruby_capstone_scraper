require_relative '../lib/scraper.rb'
require_relative '../lib/page.rb'

scrapper_obj = Scrapper.new('https://remotive.io/')
scraped = scrapper_obj.scrape
page = Page.new(scraped)
arr = page.details

def display_details(details)
  count = 1
  details.each do |val|
    puts '________________________________________________________________________________'

    puts "#{count})job's details

					position:
					#{val[:position]}
					company: #{val[:company]}
					location: #{val[:location]}
					"
    count += 1
  end
end

display_details(arr)
