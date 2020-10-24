# require libraries/modules here
require 'nokogiri'
require 'pry'



def create_project_hash
  kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))
  binding.pry
end

create_project_hash

#<li class="project grid_4">
# projects: kickstarter.css("li.project.grid_4").first
# title: project.css("h2.bbcard_name strong a").text
#image : project.css("div.project-thumbnail a img").attribute("src").value