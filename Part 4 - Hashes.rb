# Hahes are collection of key/value pairs. Also called dictionaries, associative arrays, HashMaps. They're always declared with {}'s instead of arrays using the []. They use the 
# rocketship operatior => to associate the key with the value. An example of a key is 'year' and value is '1980'
students = {"tom" => 10, "jill" => 12}
puts students # {"tom"=>10, "jill"=>12}
# To retrieve info from a hash, use the []'s.
puts students["tom"]   # 10, rememeber strings need quotes.
# To change or add to a hash, type the hash name, and []'s enclosing the key , and then = and then the new value 
students["tom"] = 40
puts students["tom"] # 40 
# to create an empty hash which you can fill up: 
empty_hashz = {} 
empty_hashz["A"] = "cow"
puts empty_hashz["A"]  # cow . If you puts the key, it will display the value only of the pair. 

