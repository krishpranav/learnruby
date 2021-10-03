#!/usr/bin/env ruby

begin
    file = open("nofileexist")
    if file
        puts "File opened successfully"
    end
rescue
    file = STDIN
end

print file, "==", STDIN, "\n"