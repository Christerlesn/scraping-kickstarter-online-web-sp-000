# require libraries/modules here
require 'nokogiri'
require 'pry'



def create_project_hash
  kickstarter = Nokogiri::HTML(File.read('fixtures/kickstarter.html'))

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end
  projects
end

create_project_hash

#<li class="project grid_4">
# projects: kickstarter.css("li.project.grid_4").first
# title: project.css("h2.bbcard_name strong a").text
#image : project.css("div.project-thumbnail a img").attribute("src").value
#description : project.css("p.bbcard_blurb").text
#location: project.css("span.location-name").text
#percent funded : project.css("ul.project-stats li.first.funded strong").text
