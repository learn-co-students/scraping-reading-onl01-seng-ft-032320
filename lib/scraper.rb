require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/") #open-uri grabs html
doc = Nokogiri::HTML(html) #nokogiri converts into nodes
doc.css(".headline-26OIBN")
#=> [#<Nokogiri::XML::Element:0x3fdb39ac8380 name="h1" attributes=[#<Nokogiri::XML::Attr:0x3fdb39ac86dc name="class" value="headline-26OIBN">] children=[#<Nokogiri::XML::Text:0x3fdb39ac5d60 "Change things.">]>]
doc.css(".headline-26OIBN").text
#=> "Change things."
courses = doc.css(".text-4GLMvr.title-oE5vT4")
courses.collexct {|c| c.text.strip}
#=> "Software EngineeringLaunch your career as a full-stack web developer ...
# Data ScienceOur full-time data science program that gives students ...
# UX/UI DesignLearn the user experience, client management, technical, ...



