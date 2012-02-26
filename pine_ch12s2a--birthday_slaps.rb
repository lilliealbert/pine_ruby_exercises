questions = ["year", "month", "day"]
answers = {}

questions.each do |time|
	puts "What #{time} were you born in? In number form, please."
	answers[time] = gets.chomp.to_i
end

birthday = Time.local(answers["year"], answers["month"], answers["day"])
puts birthday

age_in_seconds = Time.new - birthday
seconds_in_year = 60 * 60 * 24 * 365

number_of_slaps = (age_in_seconds/seconds_in_year).to_i
puts "Slap.\n" * number_of_slaps
puts "Happy Birthday."