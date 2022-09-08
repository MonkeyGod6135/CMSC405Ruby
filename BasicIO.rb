# ruby provides a whole set if I/O Related Methods in the kernel Module.
# A ruby module is like a java interface

# The print method prints each parameter its passed to standard out (stdout)
# It does not appened a new line to the end of its output
print "cat", [1,2,3], 99, "\n"
print "cat", [1,2,3], 99, "\n"

# Observations: The arguments to the print method weren't enclosed in parathesis.
# Delimeters, like the semi-colon, weren't needed at the end of the lines of code.

print "Enter your first name: "

# gets method returns the next line of input from the standard in (stdin)
# including the new line thats generated when the user hits the enter key.
# the chomp method removes the new line at the end of the input
fname = gets.chomp

# observation: Dont have to specify types. Empty parens aren't required.

#The puts method is like the print method, but appends a new line to its output.
#To reference a variable within a string, you must use a string interpolation.
#syntax and you must use double quotes
puts "Your first name is #{fname}"
puts 'Your first name is #{fname}'

print "Enter your last name: "
lname = gets.chomp
puts "Your full name is #{fname} #{lname}"

# The printf method is like the puts method, but allows you to format the
# output by using format specifiers. The printf method does not append a new line
# to the end of its output
printf "your full name is %s %s \n", fname, lname

printf "my age is %d and my weight is %.2f \n" ,25 , 195

# putc method prints the first character of the parameter its passed.
# it does not append a new line to the end of its output.
print "your initals are "
putc fname
putc lname