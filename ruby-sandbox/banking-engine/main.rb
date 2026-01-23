class Person
    # what is attr_accessor? 
    # it is a method that creates both getter and setter methods for instance variables.
    # for example, attr_accessor :name creates methods name and name=
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age.to_i # since when we get this from user input, it is a string
    end

    def profile 
        "Name: #{@name}, Age: #{@age}"
    end
end