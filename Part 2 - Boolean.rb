# Ruby uses == operator to compare objects to see if they're equal. The || means 'or', and && means 'and'
# The ! will negate operations such as !(name == 'bob')

def positive(number)
	if number > 0 
		"#{number} is positive"
	elsif number == 0 
		"#{number} is 0"
	else
		"#{number} is negative"
	end
end

puts positive(3)

age = 16
unless age >= 18
	puts "Don't call her"
end

# Equivalent to the above with the if !(x) operation
if !(age >= 18)
	puts "Don't call her"
end

# 'ternary' means composed of three items. It's a shorthand for if/then/else statement. 
# The ? stands for "then" and the : stands for "else"

def check(number) 
	puts number > 0 ? "#{number} is positive." : "#{number} is negative."
end
check(19)

# Everything besides false and nil is considered a 'true' object
if 30
	puts "Even numbers are true"
end

if nil
	puts "Unlikely you'll see this"
end

# Loops can be halted with the 'Break' keyword. 
# An infinite loop example: 

#loop do 
#	puts "forever and ever"
#end

# Here's a loop created to run a method, and stays in an infinite loop until the method nirvana is evaluated as 'true'.
# loop do 
# 	monk.meditate
# 	if monk.nirvana? then
# 		break
# 	end
# end

# One looping method can be the .times method, which requires a block ( eg. do/end or {} )
3.times do 
	puts "hi"
end

