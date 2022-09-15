# ruby supports the while, do-while, and for loops
# loops may be one-line and block form
# Block form while loop
x = 0 
while x.<10
    x = x.+1
    print x
end

# observations: The key-word end is used to tell ruby where the code block ends.
# Absence of brackets , Absence of parenthesis around the condition

#one-line form while loop
puts
x = 0
print x = x.+(1) while x.<10

# The until loop repeats as long as its condition is false.
# one-line form until loop
puts
print x = x.-(2) until x.==2

# Block form until loop
puts 
x = 10
until x.==2
    x = x.-2
    print x 
end

# Block form do-while loop
puts
x = 0
loop do
    x = x.+1
    print x 
    break if x.>=10 
end

# The for loop repeats a specfifed number of times
# The ... syntax creates an exclusive range starting at 0 and going up to , but not including 3
puts
for i in 0...3 do
    print "#{i}. Ho!"
end 

# The .. syntax creates an exclusive range starting at 0 and going up to and including 3
puts
for i in 0..3 do
    print "#{i}. Ho!"
end 

# for loops are used rarly in ruby since rubby has methods define in various
# classes that are equivalent to the for loop
puts 
3.times do
    print 'HO! '
end

puts
print 'Ho! '.*3 
