# ruby is a pure object-oriented launguage. Even arrays and functions are objects.
# the number 4 is a object
# The class method is the ruby method that may be called on any object and it
# returns the class
puts 4.class

# The methods method returns the methods that may be called on an object.
#The inspect method allows us to see the methods in a more readble form.
puts 4.methods.inspect

# Mathematichal and comparison operators are treated like methods in ruby.
#Each of these statements illustrates a method being called.
#The thing before the period is reffered to as a receiver.
puts 4.+4
puts 4.-2
puts 4.<=3

# Mathematical and comparison operations may be performed in a more traditional manner.
puts 4 + 4
puts 4 - 2 
puts 4 <= 3

# Method names may have a question mark at the end. they're answering a question.
#they return true or false
puts 4.even?

# write the lines of code that tell us the class of "jin Joint" and the methods
#avaiable to it
puts "jin joint".class
puts "jin joint".methods.inspect
puts "jin joint".length
puts "jin joint".index("o")

# Method names may have an exclimation mark at the end. Methods that modify the state
# of an object on which they're called have the exclaimation mark at the end. There is
# always a second version of these methods that don't have a exclaimation mark. They dont modify the state of the
#object. They make a copy and then modify the copy
str = "jin Joint"
upStr = str.upcase
puts upStr
puts str

mixStr = str.upcase!
puts mixStr
puts str

# write the lines of code that tell us the class of 5.2 and the methods avaiavle to it
puts 5.2.class
puts 5.2.methods.inspect

puts 5.2.<=4.3
puts 5.2.round