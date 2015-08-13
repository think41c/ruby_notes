puts self #main. Without specifying which object you are, you're playing the role of 'main'

#One object interacts with another object by calling methods. One calls/invokes the method of another object.
puts 2.even? 
#The object '2' is calling the method 'even' using the '.' 
puts 3.next # 4. Calling methods on objects ALWAYS results in another object. 
# A chained method is calling on method on the result of the last method. 
puts 5.next.next # 7 
# to see what methdos are available for an object: 
#puts 5.methods    #tons of output here. 
#puts 5.methods.sort #also works and sorts the methdos alphabetically.
# Notice that even the + and - operators are also just methods called on objects (eg. numbers!)
puts 4.+(3) # 7, actually showing the method call '.', the method name '+', the argument optional syntax (), the parameters '3'
puts 4 + 3  # 7, called 'syntatic sugar' when you don't have all the junk going on like in the last expression.
# All of these methods have 'syntatic sugar' --->   +   -   *   /   =   ==    !=    >   <   >=    <=    []
# Methods are paths of communciation between objects. Passing "arguments" to one another is how they 'talk'.
# The [] is unique in that it doesn't need the '.' but also encloses it's arguments.
words = ['foo', 'bar', 'zzz']
puts words.[](2)  #w/o sugar.
puts words[2]     #w/ sugar.


puts ['apple' , 'banana' , 'carrot'].index('apple')   # ()'s are always optional in Ruby
puts 2.between?(1,3)  #true

# 'Literal form' is anything inside of double quotes or single quotes " or '. Anything inside of these is considered a string. 
# All strings are instances of the String class. 
"Yum" # This is an instance of a string. The string class has many methods avaialable to be used on the string as well.
puts "Longer".length # 6. Invokes the .length method in the String class to return the number of characters in a string. 

# String interpolation is replacing placeholders with values they represent. Such as:
a  = 10
puts "She's a perfect #{a}" # this interpolation allows 'a' to be replaced w/ '10'

# Placeholders aren't just variables. It's any block of code you you want evaluated can put in between the {}'s after the #. 
# String literals created with single quotes do NOT accept interpolation! eg. 'She's a perfect #{a}' doesn't work. 
# Double quotes allow for escape sequences, and single quotes don't. "\n" is a newline escape code. '\n' is just a slash and an n.

puts "Hi there Mary".include?("Mary") #true
puts "Hi there Mary".start_with?("Hi")#true
puts "Hi there Mary".index('e')       #5 , Finds the first instance of that letter. Remember that the first character is starting with 0, not 1. 
puts "Hi".index('z') # Prints blank line/'nil' since 'z' is never found. 
puts "Well, Hi".index("Hi")  # 6 Prints the location when "Hi" starts.
# A method ends with a ? when it returns only boolean values (eg. true/false)
puts "Well, Hi".swapcase.index("hI")  #6 ,reverses the case AND finds the index after its been swapped. 
puts "To Split A String".split(' ') # Print outs To, Split, A, String each on their separate line
splitString = "To Split A String".split(' ') # stores an array with "To" being [0], "Split" being [1], and so on.
puts "Peanut" + "Butter"   # String concatenation. The string "peanut" and "butter" remain unchanged. A 3rd string, "PeanutButter" is created.
puts "Jelly".concat("Donut")  # Another form of concatenation. 
puts "Sticky" << "Bun" # Using the append operator << will work the same. But this sames memory, since it doesn't create a 3rd separate string. 
puts "All four one and one four all".sub("four", "five")   # Replaces the first time it sees "four" with the word "five", but no subsequent instances
puts "All four one and one four all".gsub("four", "five")  # .gsub is a global sub method and replaces ALL instances of the word.

#Regular Expressions or RegExs are flexible/concise ways to match parts of strings. Put what you want matched in between //'s. 
puts "Fucken hell".gsub(/[aeiou]/,'*')
puts "REplace CAPitals".gsub(/[A-Z]/, "!")
puts "Find It".match(/.. ../)  # The .'s are the results you want. The 'space' is the trigger that makes match say it's found a match.
puts "How Many?".match(/an../) # any?  
puts "Starts later".match(/a./, 4) # Starts at the 4th spot on the index to find the 'at' in 'later' and not the 'ar' in 'start'
puts "f f f f".gsub(' ','')        # Get rid of spaces example. 
puts 5.equal?(3)

# Putting it all together
def palindrome?(sentence)   #This is a method *I* defined. Therefore, it doesn't need a ? after it. But to call the method would be 'palindome' w/o the ?
	sentence.downcase.gsub(" ", "") == sentence.downcase.reverse.gsub(" ", "")
end
puts palindrome?("a man a plan a Canal Panama")  #true
puts "man that sucks".sub("man", "12345")

