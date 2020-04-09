require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/") #stores html in a temporary file

#HTML is a method of the gem Nokogiri and converts the large string into a bunch of nested nodes
doc = Nokogiri::HTML(html)


doc.css(".headline-26OIBN").text
puts doc.css(".headline-26OIBN").text
