songs = Dir['/Users/lilliechilen/learn_ruby/**/*.{MP3,mp3,m4a,M4A}']

#I didn't do chapter 10 so I borrowed this shuffle method from the internet.

def shuffle!
  size.downto(1) { |n| push delete_at(rand(n)) }
  self
end

File.open "my_playlist.m3u", 'w' do |f|
  songs.shuffle!.each do |song|
    f.write("#{song}\n")
  end
end