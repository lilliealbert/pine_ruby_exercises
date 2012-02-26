#Homework!!! Here's my full-name asking machine

puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp 
puts "What's your last name?"
last_name = gets.chomp

#I decided that since everyone doesn't have a middle name, I'd rather it respond with just the first and last name if the person didn't include anything. I tried " if middle_name == "\n" for the first part of the if statement, but it didn't understand that, so I tried the empty? method and that seems to have worked. 

if middle_name.empty?
  puts "Thanks, " + first_name + " " + last_name + ". It's so nice to meet you."
else 
    puts "Thanks, " + first_name + " " +  middle_name + " " + last_name + ". It's so nice to meet you."
end

#question about commenting out lines & line breaks: is just putting the hash mark at the beginning of the comment good enough as long as the comment itself doesn't have a new line within it? It seems that way to me. 
