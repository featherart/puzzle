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

file_two = open("videos.json")
json_two = file_two.read
parsed_two = JSON.parse(json_two)

mismatch = []

counter = 0
parsed_two.each do |video|
  parsed.each do |movie|
    a_video = video['title'].upcase.strip
    a_movie = movie['title'].upcase.strip
    if(a_video == a_movie )
      puts "match " + a_video
      counter += 1
      puts counter.to_s
    else
      mismatch.push(video['title'])
      mismatch.push(movie['title'])
    end
  end
end

mismatch = mismatch.uniq!
puts "\n"
puts "mismatches: " + mismatch.length.to_s
mismatch.each do |i|
  p i
end