require 'nokogiri'
require 'httparty'
require 'byebug'
require 'pry'




class Scraper
attr_reader :url, :position , :company
	def initialize(position, company)
		@position = position.capitalize
		@company = company.capitalize
		@url = 'https://remotive.io/remote-jobs'
	end

	def parse_url(url)
		unparse_url = HTTParty.get(url)
		Nokogiri::HTML(unparse_url)
	end

	

end