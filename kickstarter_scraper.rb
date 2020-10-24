# require libraries/modules here
require 'nokogiri'
require 'pry'

kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))

def create_project_hash
  # write your code here
end
binding.pry
