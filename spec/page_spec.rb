require_relative '../lib/page.rb'
require_relative '../lib/scraper.rb'

describe Page do
  let(:scrapped) { Scrapper.new('https://remotive.io/') }
  let(:page) { Page.new(scrapped) }

  it 'expects page to be an instance of Page class' do
    expect(page).to be_a Page
  end
end