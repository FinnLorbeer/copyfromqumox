require 'rubygems'
require 'fileutils'

puts Dir['./*/*']

index = 1

dir = Dir.glob('**/*.txt').sort

dir.each do |file|
  puts file
  f = file.to_s
  puts "copy file #{index}"
  FileUtils.mv("#{f}", "./new_name_#{index}.txt" )
  sleep 2
  index += 1
  puts "done"
end
