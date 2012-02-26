puts "Give me a year."
first_year = gets.chomp().to_i
puts "Give me a later year."
second_year = gets.chomp().to_i
puts "Here are your leap years:"

def is_divisible_by(test, num)
  return num % test == 0
end

while first_year <= second_year
  if first_year % 4 == 0
    if first_year % 100 == 0     
      if first_year % 400 == 0
        puts first_year
      end
    else # divisible by four but not by 100 
      puts first_year
    end  
  end
  first_year = first_year + 1
end