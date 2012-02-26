#deaf grandma
puts "Ask Granny a question!\n"
bye_count = 0

while true
  question = gets.chomp()
  #uppercase?
  if question == question.upcase
    #BYE?
    if question == "BYE"
      puts "HUH?! SPEAK UP, SONNY!"
      bye_count += 1
      if bye_count == 3
        puts "OKAY, BYE DEAR."
        break
      end
    else
      puts "NO, NOT SINCE #{1930+rand(20)}!"
      break
    end
  #fail to uppercase?
  else  
    puts "HUH?! SPEAK UP, SONNY!"  
    bye_count = 0
  end
end

