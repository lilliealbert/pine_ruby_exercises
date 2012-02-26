def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

ask 'Do you like eating tacos?'
ask 'Do you like pigs?'
wets_bed = ask 'Do you wet the bed?'
ask 'What is a thing?'

puts "Debriefing::::"
puts "Thank you"

puts wets_bed