# movies.json
# description - string
# language - string
# runtime - int
# title - string
# tms_id - string
# year - int

# videos.json
# description - string
# id - number
# image_url - str
# parsed_duration - number
# title - str
# url - str
# year - number

require 'rubygems'
require 'json'

file = open("movies.json")
json = file.read
parsed = JSON.parse(json)

# (0...parsed.length).each do |i|
#   puts parsed[i]['title']
# end

puts '\n'

file_two = open("videos.json")
json_two = file_two.read
parsed_two = JSON.parse(json_two)

mismatch = []

counter = 0
parsed_two.each do |video|
  parsed.each do |movie|
    
    if(video['title'] == movie['title'])
      puts "match " + video['title']
      counter += 1
      puts counter.to_s
    else
      mismatch.push(video['title'])
      mismatch.push(movie['title'])
    end
  end
end

mismatch = mismatch.uniq!
mismatch.each do |i|
  puts i
end