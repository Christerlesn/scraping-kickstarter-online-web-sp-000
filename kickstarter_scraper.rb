# require libraries/modules here
require 'nokogiri'
require 'pry'



def create_project_hash
  kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))
  binding.pry
end
