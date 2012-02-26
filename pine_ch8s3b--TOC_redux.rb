#table of contents, redux

chapters = [
  "Chapter 1: Getting Started",
  "Chapter 2: Numbers",
  "Chapter 3: Letters",
]
page = ["page  1", "page  9", "page 13"]

line_width = 60
puts("Table of Contents".center(line_width))

chapters.size.times do |index|
  puts(chapters[index].ljust(line_width/2) + page[index].rjust(line_width/2))
end

