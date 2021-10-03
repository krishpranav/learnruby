#!/usr/bin/env ruby

# requires dbi gem
require "dbi"

begin
   # connect to a database
   dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "testuser", "test123")

   # select row in database
   row = dbh.select_one("SELECT VERSION()")
   
   # server version
   puts "Server version: " + row[0]

# exception
rescue DBI::DatabaseError => e
   puts "An error occurred"
   puts "Error code:    #{e.err}"
   puts "Error message: #{e.errstr}"
ensure
   # disconnect from server
   dbh.disconnect if dbh
end