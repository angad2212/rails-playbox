# This Ruby code defines a User class that includes modules for job and college information,
# and extends a module for general info about the class itself.
# It demonstrates the use of modules to organize related methods and the use of instance variables.

module Job
  def role_info
    "My name is #{@name} and my role is #{@role}."
  end
end

module College
  def college_info
    "I am a student at #{@college_name}."
  end
end

module Info
  def info
    "This is the User class for the application."
  end
end

class User
  include Job
  include College
  extend Info

  def initialize(name, age, role, college_name)
    @name = name
    @age = age
    @role = role
    @college_name = college_name
  end

  def greet
    "Hello, my name is #{@name} and I am #{@age} years old."
  end
end

user = User.new("Angad", 22, "Backend Developer", "IIT Delhi")

puts User.info
puts user.greet
puts user.role_info
puts user.college_info
