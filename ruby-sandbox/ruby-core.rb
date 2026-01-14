#!/usr/bin/env ruby

# -----------------------------
# Basic Variables and Printing
# -----------------------------

name = "Angad"
age = 21
height = 175.5
likes_ruby = true

puts "Name: #{name}, Age: #{age}, Height: #{height}, Likes Ruby: #{likes_ruby}"
puts "-" * 60

# -----------------------------
# Arrays & Hashes
# -----------------------------

numbers = [1, 2, 3, 4, 5]
user = { name: "Angad", role: "developer", level: 1 }

puts "Numbers: #{numbers.inspect}"
puts "User Hash: #{user.inspect}"
puts "-" * 60

# -----------------------------
# Conditionals & Loops
# -----------------------------

numbers.each do |num|
  if num.even?
    puts "#{num} is even"
  else
    puts "#{num} is odd"
  end
end

puts "-" * 60

# -----------------------------
# Methods
# -----------------------------

def greet(name, lang = "Ruby")
  "Hello #{name}, welcome to #{lang}!"
end

puts greet("Angad")
puts greet("Dev", "Programming")
puts "-" * 60

# -----------------------------
# Classes, OOP, & Inheritance
# -----------------------------

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def sound
    "..."
  end
end

class Dog < Animal
  def sound
    "woof!"
  end
end

class Cat < Animal
  def sound
    "meow!"
  end
end

animals = [Dog.new("Rex"), Cat.new("Mittens")]
animals.each { |a| puts "#{a.name} says #{a.sound}" }

puts "-" * 60

# -----------------------------
# Modules & Mixins
# -----------------------------

module Speak
  def shout(text)
    text.upcase + "!!!"
  end
end

class Person
  include Speak
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

p1 = Person.new("angad")
puts p1.shout("ruby is fun")
puts "-" * 60

# -----------------------------
# Blocks, Procs, Lambdas
# -----------------------------

def apply_twice(x)
  yield(x)
  yield(x)
end

apply_twice(3) { |n| puts "Double: #{n * 2}" }

adder = Proc.new { |x, y| x + y }
puts "Proc sum: #{adder.call(2, 5)}"

square = ->(x) { x * x }
puts "Lambda square: #{square.call(6)}"

puts "-" * 60

# -----------------------------
# Enumerables & Higher-Order Ops
# -----------------------------

nums = (1..10).to_a

filtered = nums.select(&:even?)
mapped = nums.map { |n| n * 3 }
reduced = nums.reduce(:+)

puts "Even numbers: #{filtered.inspect}"
puts "Tripled numbers: #{mapped.inspect}"
puts "Sum: #{reduced}"
puts "-" * 60

# -----------------------------
# File Input & Output
# -----------------------------

filename = "test_output.txt"

File.open(filename, "w") do |f|
  f.puts "Hello from Ruby!"
  f.puts "Numbers: #{nums.inspect}"
end

puts "File written: #{filename}"

content = File.read(filename)
puts "File content:"
puts content
puts "-" * 60

# -----------------------------
# Error Handling
# -----------------------------

def divide(a, b)
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "Error: #{e.message}"
    result = nil
  ensure
    puts "divide(#{a}, #{b}) finished"
  end
  result
end

puts divide(10, 2)
puts divide(10, 0)

puts "-" * 60

# -----------------------------
# END
# -----------------------------

puts "Ruby demo complete!"
