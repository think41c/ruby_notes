# Arrays can be created 2 ways:
[]
# or
Array.new 
# and both are empty arrays. To build an array, you can combine different variable types and that's fine: 
arrayz = [1,2,3,4, "snack"]
# A "reverse index lookup" is when Ruby counts arrays in negative numbers starting from the last element instead of the first. 
# When Ruby counts forward in an array, it starts at 0. when it counts backwards, it starts at -1 (0 is already taken!). 
rev = [5, 10, 15]
puts rev[-1]   # 15
puts rev[0]    # 5 
puts [1,2,3] [-1]   # ******** I don't understand this syntax. However, it simply prints out '3'
# Arrays can always grow/shrink in size. You can use the 'append' operator, << , to truly change the contents of the array at the end of the array.
z = ["a", "b"] 
z << "c" 
puts z.join(' ')
# The .push method is the same as the append operator (method). 
puts z.push('puushed!').join(' ')
# The .map method changes the array to run a block of code upon each element in the array. 
puts y = [5,10].map { |x| x*10}.join(',') #50,100   
# .map method is also called .collect, they're identical:
puts y =[5,10].collect { |x| x*10}.join(',')

# To reiterate the do/end vs {} block, here's the equivalent line below: 
y = [5,10].map do |x|
	x*10 
end               #Can't call a method here, so you need a separate line to invoke the .join method.
puts y.join(',')
# Note that when you do the do/end block you can't call a method on it! 

# Nomenclature - The "Class#method" syntax is the standard way of referring to Ruby methods and you will see it a lot in books.
# Using the .select method for arrays, it takes a block and gives the results for array elements that are 'true'
puts [1,2,3,4].select { |array_elementz| array_elementz % 2 == 0 }.join(' ') #2, 4. Since this looks at each array element, divides it by 2 and sees if the remainder is equal to 0.
puts names=["hi", "bye", "three"].select { |x| x.length > 4 } #three. The syntax of .select is to take the array element between the pipes, and look for an expression that results in true.
# Deleting elements is easy with the .delete method that takes a parameter, NOT a block. 
gone=[1, 2, 3, 4]
puts gone.join(' ') #1 2 3 4
gone.delete(2) # deletes 2 from the array. The array has now changed to only having 3 elements.
puts gone.join(' ') # 1 3 4 
puts testie=[6,7,8,9].delete(7)  # displays 7, the result of the .delete method, and changes the array to ONLY be 7. This is screwy, but why would you create an array and delete something 
								 # the moment you create it? 
puts testie # 7. The entire array has changed to the element you wanted to delete. Do NOT instaniate an array and invoke .delete on it simultaneously. 
lore = [10,11,12,13]
puts lore.join(' ')   # 10 11 12 13
lore.delete(10..12) # ranges don't work. This doesn't nothing. 
puts lore.join ( ' ') # 10 11 12 13
lore.delete(11)
puts lore.join (' ')  # 10 12 13 
lore.delete(11) # does nothing. It's already been deleted. 
# lore.delete(10, 13) #doesn't work
# The .delete_if method takes a block, and iterates through the array and if the expression is true, it deletes it
plato = [20,30,40,50]
plato.delete_if{ |x| x>35} 
puts plato.join(' ') # 20 30 
# Ruby methods longer than one word use snake case such as .delete_if
# 3.2 - Iteration with for Loops 
# for syntax is 'for current_iteration in some_array  ... end'   The 'for' loop uses 3 keywords: for, in, end
for i in plato    #this goes though every element in plato. And instead of having the ||'s feed in the array element, it just hangs out there as 'i' (or whatever) after the keyword 'for'
	# puts i.join(" ! ")  # This won't work because i isn't an array to join up! It's just a single element in the array being fed into the variable 'i'
	puts i
end

# Ineligant code 
numbz = [1,2,3,4,5,6,7]
def array_copy(source)
  destination = []   #one of the few times you need to instantiate a variable type is for arrays if you're about to start filling an empty array later (such as 'destination')
    for i in source   
      if i < 4
        then destination << i 
      else
        end    
    end
  return destination
end
puts array_copy(numbz).join (' ')  # 1 2 3

# This is identical to array_copy
def dumb_copy(source)
  destination = []
  for number in source
    destination << number if number < 4   # append 'number' to destination IF number < 4
    #destination << if x < 4   # this doesn't work. It says take 'destination' and append [what?!] if x < 4. 
  end
  return destination
end
puts dumb_copy(numbz).join (' ')

# The Array#each method is used much more commonly than the 'for' loop. .each takes a block
easy = ['a', 'b', 'c']
easy.each{ |z| puts z } # a b c  Why can't we use .join(' ')? Because the .each block is running the expression in that block. It's not necessarily returning an array like .collect
                        # .map or .select

def array_copy(source)
  destination = []
  source.each { |x| destination << x if x < 4 }   # Remember you don't need 'do/end' if you're using a single line block using the {}'s!
  destination # using the 'return' keyword in the last statement in a ruby method is redunant, so I just removed it. 
end
puts array_copy(numbz).join (' ')  # 1 2 3