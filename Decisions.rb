# Decisions (expressions) in ruby evaluate to true or false 
x = 4 

puts x.<5
puts x.<=4
puts x.>4

# True and false are even objects
puts true.class
puts false.class
puts true.methods.inspect
puts false.methods.inspect

# simple decisions may be in one line or block form
# Block form if
if x.==4
    puts 'x is equal to 4'
end

# Observations: Notice the absence of curly brackets around the code block
# Notice the absence of parathesis is around the expression. The keyword end
# is used to tell ruby the end of the code block to be executed

# one-line form if'
puts 'x is equal to 4.' if x.==4
puts 'x is not equal to 5.' if x.!=5

# As a programmer, you should strive to write fewer lines of code.

# One-line form unless
# unless tests if its condition is false.
puts 'x is not equal to 5.' unless x.==5

# Block from unless-else
unless x.==4
    puts 'x is not equal to 4.'
else
    puts 'x is equal to 4.'
end

# Decisions may invlolve other types of objects, including dates.
today = Time.now
puts today
puts today.class

# Block form If-elseif
if today.saturday?
    puts 'Do chores around the house'
elsif today.sunday?
    puts 'Relax.'
else
    puts 'go to school.'
end

# There are other values in ruby that evaluate to true
puts 'true is true' if true
puts 'one is true' if 1
puts '0 is true' if 0
puts '1.5 is true' if 1.5
puts 'Time.now is true' if Time.now

# The only things that don't evaluate to rtue and false and nil
puts 'false is not true' if false
puts 'nil is not true' if nil

# unless tests if the condtion is false
puts 'false is not true' unless false
puts 'nil is not true' unless nil

# The logical operators && and || work very simular to java
puts false && true
puts false || true

# There is short circuit evaluation in ruby. The interpreter skips evaluation
# of sub-expressions in logical expression
# if sub-expressison are joined by &&, the interpreter will skip the evaluation of
# all expressions when the first false sub-exprssion is encountered
# puts true && this_will_cause_an_error
puts false && this_will_cause_an_error

# If the sub-ecpression are joined by ||, the interpreter will skip the evaluation of
# all subsquent expressions when the first false sub-exprssion is encountered
puts true || this_will_cause_an_error
puts false || this_will_cause_an_error