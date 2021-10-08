#!/usr/bin/env ruby

def test 
    puts "you are in a method"
    yield
    puts "you are again back to method"
    yield
end

test {puts "you are in a block"}