Dir.chdir '/Users/lilliechilen/learn_ruby/blazingcloud_ruby/pictures'

pic_names = Dir['/Users/lilliechilen/learn_ruby/images_for_moving_around/*.{JPG,jpg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts 
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."
  
  new_name = if pic_number < 10
    "#{batch_name}_0#{pic_number}.jpg"
  else
    "#{batch_name}_#{pic_number}.jpg"
  end
  
  #puts new_name, File.exists?(new_name)
  
  if File.exists?(new_name)
    puts
    puts "That file name already exists. Shutting down."
    exit
  end
  
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts "And done."

