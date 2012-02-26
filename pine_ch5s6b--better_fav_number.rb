#and here's my one-upping favorite number machine

puts "Hey, so what's your favorite number?"
fav_number = gets.chomp.to_i + 1
puts "Really? Because you might get a lot further in life with a favorite number like " + fav_number.to_s + " . But that's just my opinion. What do I know? I'm just a passive-aggressive computer program."

#So. I learned/was reminded that you can't add a string to a number. Turning the input from a string into an integer back into a string feels a bit cumbersome -- wondering if others had more elegant solutions. 
