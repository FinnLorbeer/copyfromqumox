require 'rubygems'
require 'fileutils'

puts Dir['./*/*']

index = 13

dir = Dir.glob('**/*.JPG').sort

dir.each do |file|
  f = file.to_s
  puts "#{index}: copy #{f} ==> neuseeland_#{index}.JPG"
  FileUtils.mv("#{f}", "./neuseeland_#{index}.JPG" )
  4.times do
    print '.'
    sleep 1
  end
  index += 1
  puts "done", ""
end
