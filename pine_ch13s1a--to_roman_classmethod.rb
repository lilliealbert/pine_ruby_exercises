# New Roman Numeral Making Machine - as a class method

class Integer
  def to_roman 
    number = self
    
    roman_numeral_output = []

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
  
    roman_numerals.reverse.each do |letter, denominator|
      amount_of_letter = number / denominator
      number = number - (amount_of_letter * denominator)
      roman_numeral_output.push letter * amount_of_letter
    end

    roman_numeral_output.join    
  end
end

puts "What number would you like to romanize?"
thing = gets.chomp.to_i
puts thing.to_roman