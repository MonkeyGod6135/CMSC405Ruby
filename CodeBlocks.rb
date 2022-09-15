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
