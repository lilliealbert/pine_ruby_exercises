birth_dates = {}

File.open 'birthdays.txt', 'r' do |f|
end

birthdays_string = File.read 'birthdays.txt'

birthdays_string.each_line do |line|
  split_line = line.split(",\t")
  name = split_line[0]
  date = split_line[1]
  birth_dates[name] = date
end

def birthday_is_when birth_dates, birthday_query
 if birth_dates[birthday_query] != nil
   return birth_dates[birthday_query]
 else
   return nil
  end
end

puts "Whose birthday did you forget?"
birthday_query = gets.chomp()

birthday_is_when birth_dates, birthday_query

while true
  if birth_dates[birthday_query] != nil
    puts birth_dates[birthday_query]
    break  
  else
    someone_random = birth_dates.keys.sample
    puts "Sorry, they don't have a birthday. How about #{someone_random}?"
    birthday_query = gets.chomp()
  end
end