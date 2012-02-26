#word alphebetization machine

words = []

while true
  word = gets.chomp()
  words.push word
  if word.empty?
    break
  end
end

puts words.sort