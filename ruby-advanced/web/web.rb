#!/usr/bin/env ruby 

# require the gem named cgi
require 'cgi'

# cgi new app 
cgi = CGI.new

# print the cgi header
puts cgi.header

# puts our html tag
puts "<html><body>This is a test</body></html>"