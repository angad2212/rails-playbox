# ===== Variables =====
x = 10
name = "Ruby"
puts "x: #{x}, name: #{name}"

# ===== Constants =====
PI = 3.14
APP_ENV = :development

NAME = "Angad"

# ===== Method Definitions =====
def greet
  puts "Hello, #{NAME}!"
end

def add(a, b)
  a + b
end

def division (a, b)
  return nil if b == 0
  a / b
end

greet
puts add(2, 3)
puts division(10, 2)
puts division(10, 0).inspect

# ===== Conditionals =====
score = 75

if score > 90
  puts "A grade"
elsif score > 75
  puts "B grade"
else
  puts "C grade"
end

# unless is like "if not"
logged_in = false
unless logged_in
  puts "Redirect to login"
end

# case statement
day = "Monday"

case day
when "Monday"
  puts "Start of the week"
when "Friday"
  puts "End of the week"
else
  puts "Midweek"
end

# shorthand unless
puts "hello my name is angad suryavanshi" unless logged_in = false

# shorthand if 
puts "You are logged in" if logged_in = true

logged_in = true
if logged_in
  puts "Welcome back!"
end

# ===== Loops =====

# while loop
i = 0
while i < 3
  puts "while: #{i}"
  i += 1
end

i = 0
while i < 10 do 
    puts "Value of i is #{i}"
    i += 2
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |value|
    puts "Value from array is #{value}"
end

arr.map do |value|
    puts "Mapped value is #{value * 2}"
end

arr.select do |value|
    puts "Selected value is #{value}" if value.even?
end

arr.reject do |value|
    puts "Rejected value is #{value}" if value.odd?
end

arr.reduce(0) do |sum, value| # the 0 in bracket is the initial value of sum
    sum + value
end

# until loop (run until condition becomes true)
j = 0
until j == 3
  puts "until: #{j}"
  j += 1
end

# for loop
for k in 1..3
  puts "for: #{k}"
end

# each loop (more Ruby-ish)
[10, 20, 30].each do |num|
  puts "each: #{num}"
end

# ===== Symbols =====
status = :ok
puts status

# ===== Ranges =====
range_inclusive = 1..5   # includes 5
range_exclusive = 1...5  # excludes 5

puts range_inclusive.to_a.inspect
puts range_exclusive.to_a.inspect

# ===== Blocks =====

# do...end block
3.times do |n|
  puts "do...end block: #{n}"
end

# { } block
3.times { |n| puts "{ } block: #{n}" }

# ===== Lambdas vs Procs =====

# Lambda behaves like a method (strict arity)
my_lambda = ->(x, y) { x + y }
puts "lambda: #{my_lambda.call(2, 3)}"

# Proc is more flexible with arguments
my_proc = Proc.new { |x, y| (x || 0) + (y || 0) }
puts "proc: #{my_proc.call(2)}   # missing arg doesn't error"

