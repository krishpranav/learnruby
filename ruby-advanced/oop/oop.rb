#!/usr/bin/env ruby

# define a class called Box
class Box
    # constructor method
    def initialize(w, h)
        @width, @height = w, h
    end

    def printWidth
        @width
    end

    def printHeight
        @height
    end
end

box = Box.new(10, 20)

x = box.printWidth()
y = box.printHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"