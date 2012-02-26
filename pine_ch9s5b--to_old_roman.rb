# Old Roman Numeral Making Machine 

def old_roman_numeral number
  roman_numeral_output = []

  roman_numerals = [
    ["I", 1], 
    ["V", 5],
    ["X", 10],
    ["L", 50],
    ["C", 100],
    ["D", 500],
    ["M", 1000]
  ]

  roman_numerals.reverse.each do |letter, denominator|
    amount_of_letter = number / denominator
    number = number - (amount_of_letter * denominator)
    roman_numeral_output.push letter * amount_of_letter
  end
  
  roman_numeral_output.join
end

puts "Type a number & I'll roman numeralize it the old fashioned way."
number = gets.chomp.to_i
puts old_roman_numeral number