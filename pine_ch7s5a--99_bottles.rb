#99 bottles of beers on the wall

beers = 99
while beers < 100
  puts "#{beers} bottles of beer on the wall, #{beers} bottles of beer!\nTake one down, pass it around, #{beers} bottles of beer on the wall.\n\n"
  beers = ((beers.to_i) - 1)
  if beers == 1
    puts "#{beers} bottle of beer on the wall, #{beers} bottle of beer!\nTake one down, pass it around, #{beers} bottle of beer on the wall.\nTHE END!!!"
    break
  end
end