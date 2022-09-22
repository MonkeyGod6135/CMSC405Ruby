# 1. Write the lines of code that use a do-while loop to compute
# the factorial of a number. Calculating a factorial means to multiply 
# a series of descending natural numbers; for example,
# 1 factorial = 1
# 2 factorial = 2 * 1 = 2
# 3 factorial = 3 * 2 * 1 = 6
# 4 factorial = 4 * 3 * 2 * 1 = 24
# 5 factorial = 5 * 4 * 3 * 2 * 1 = 120
# 6 factorial = 6 * 5 * 4 * 3 * 2 * 1 = 720

puts
x = 6
loop do
    x = x.-1
    print x
    break if x.==1 
end


# 2. Write a function named gen_factorial that computes and returns
# the factorial of a number. It must have one integer input parameter 
# that contains the number for which a factorial is to be computed.
def factorial(x)
    loop do
        n = factorial(x-1)
        return n
        break if x.==1
    end
end

# 3. Write the code to call the gen_factorial function and output the 
# return from the function.
def factorial 6 

# 4. Write a function named gen_factorial that returns a code block. The 
# code block should compute and return the factorial of a number. 
# The code block must have one integer input parameter that contains 
# the number for which a factorial is to be computed.

# 5. Write the code to call the gen_factorial function and store the 
# code block it returns in a variable named f.

# 6. Write the code to execute the code block contained in f 
# and output the code block's return.

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words).
# To interact with ruby we used visual studio code along with rubys libary. We used rubys libary's along with visual studio code to un various
# programs for differnt functions in ruby. Such as code blocks, loops, and decisions etc. We created other documents using various methods and classes
# in rubys jdk.
# 8. What is Ruby's programming model?
# Object oriented, Strongly typed, Dynamically typed
# 9. Code blocks that exist on their own are called what?
# ?
# 10. What does the Ruby ... syntax create? 
# an array
# Bonus (5 points). Write the full path to where Ruby's language libraries 
# exist on your laptop.