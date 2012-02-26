#deaf grandma
puts "Ask Granny a question!\n"

while true
  question = gets.chomp()
  if question != question.upcase
    puts "HUH?! SPEAK UP, SONNY!"  
    next
  end
  
  if question == "BYE"
    puts "HUH?! SPEAK UP, SONNY!"
    next
  end
  
  puts "NO, NOT SINCE #{1930+rand(20)}!"
  break
end

