# code blocjs are chuncks of code between either curly braces or a do-end
# {puts 'Hiya there kiddo!'}

#do
#   puts 'Hiya there kiddo!'
#end

# Naked code blocks will generate a syntax error. code blocks cant exist on
# their own. they must be paseed to methods

# This is how you pass a curly braces code block to a method
3.times {puts 'Hiya there kiddo!'}

# this is how you pass a do end code block
3.times do
    puts 'Hiya there kiddo!'
end

# curly braces are typically used for single-line code blocks.
# do-end is used for multi-line code blocks
c = [1,2,3]
2.times do
    puts c.first
    puts c.last
    puts c.length
    puts c.pop
end

# This method is capable of executing a code block. It uses the ruby yield method.
# the ruby yeild method can be used to execute a code block
def call_block
    puts 'Start of block'
    yield
    yield
    puts 'End of block'
end

# call call_block passing it a code block
call_block {puts 'In the block'}

# This method uses the yield method that has been provided aruguments
def who_says_what
    yield "faith", "hello"
    yield "hafsah", "howdy"
end

# WIthin the code block sent to the function, you must define parameters
# to recieve the aruguments and they must be placed within the pipe symbols
# |params 
who_says_what {|name, greeting| puts "#{name} says #{greeting}"}

# Another way to invoke a code block is to use the call method
# this method uses the call method to execute a code block
def call_block &b
    b.call
end

call_block {puts 'Hello There'}

def call_block_greeting &b
    b.call "Dwan"
end

call_block_greeting {|name| puts "Hello there #{name}"}

# code blocks are used throughout ruby with iterators and collctions such as an array.
moreanimals = ['lions and', 'tigers and','bears','oh my']
moreanimals.each {|a| print a," "}
puts
('a' .. 'e').each {|char| print char}

# There are oter iterator methods in ruby, like upto
puts
3.upto(6) {|i| print i}

# Code blocks may be returned by functions, but first they miust be converted into
# proc objects. Ruby has a function that is named lambda thats converts a code block into a proc object
def n_times thing
    lambda {|n| thing * n} 
end 

# call n_times and store its retun in a variable
# {|n| 23 * n} 
p1 = n_times 23
puts p1.class

# To execute the code block contained in p1, use the call statement
puts p1.call 3
puts p1.call 4

# call n_times and store its return in a variable, but 
# give it a different argument
# {|n| "Hello" * n }
p2 = n_times "Hello "

# To execute the code block contained in p2, use the call statement
puts p2.call 3 

# this function contains a do - end block that will be returned as a proc
def day_of_week
    lambda do |today|
        if today.saturday?
             'Do chores around the house'
        elsif today.sunday?
             'Relax.'
        else
             'go to school.'
        end
    end
end

# call day of week and store its return in a variable
d = day_of_week
# To execute the code block contained in p2, use the call statement
puts d.call Time.now