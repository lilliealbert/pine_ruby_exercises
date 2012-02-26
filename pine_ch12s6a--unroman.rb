def un_roman_number roman
  arabic_number_output = 0

  roman_numerals = [
    ["I", 1],
    ["IV", 4], 
    ["V", 5],
    ["IX", 9],
    ["X", 10],
    ["XL", 40],
    ["L", 50],
    ["XC", 90],
    ["C", 100],
    ["CD", 400],
    ["D", 500],
    ["CM", 900],
    ["M", 1000]
  ]
  
  roman_numerals.reverse.each do |letter, arabic_number|
    while roman.start_with?(letter)
      if roman.start_with?(letter*4)
        return nil
      end
      if letter.length == 2 && roman.start_with?(letter*2)
        return nil
      end
      arabic_number_output += arabic_number
      roman = roman[letter.length .. -1]
    end
  end 
  if roman.length > 0
    return nil
  end
  arabic_number_output
end

puts "Give me a roman numeral and I'll make it a regular number."
roman = gets.chomp.upcase

answer = un_roman_number roman

if answer == nil
  puts "That's not a real roman numeral."
else
  puts answer
end
  

