# In ruby, you can define a function without first having to define a class,
# you must use the keyword def to define a function
def say_hello
    return 'Hello'
end

# Observation: Notice the absense of curly brackets
# absense of parenthesis following the function name
# absense of return type in the function declation

puts say_hello

# Every function in ruby returns a value. Even if you don't include an explicit
# return statement in the function, ruby will return a value. The value that is
# returned is the last statement processed before the function exits
def tell_the_truth
    'truth!'
    'Lie!'
    3.<2
end

puts tell_the_truth

# Functions in ruby may have parameters 
def say_hello name
    return 'hello ' + name + ' !'
end

# Observations: notice the absense of parenthesis around the parameter names.
# absense of data type

puts say_hello 'Benny'

#Every function is an object. Every function is a object of the class it returns
puts say_hello('Benny').class