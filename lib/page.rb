class Page
  attr_reader :pages
  def initialize(pages)
    @pages = pages
  end

  def details
    details_arr = []
    pages.each do |node|
			details_hash = { 
				 position: node.css('div.position').text,
        company: node.css('div.company').text,
				location: node.css('span.location').text
				}
      details_arr << details_hash
    end
    details_arr
  end
end