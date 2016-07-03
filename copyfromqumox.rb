require 'rubygems'
require 'fileutils'

puts Dir['./*/*']

def copy(filetype)
  index = 1

  dir = Dir.glob("**/*.#{filetype}").sort

  dir.each do |file|
    f = file.to_s
    filename = "segeln_2016_#{index.to_s.rjust(4, "0")}.#{filetype}"
    puts "#{index}: copy #{f} ==> #{filename}"
    FileUtils.mv("#{f}", "./#{filename}" )
    10.times do
      print '.'
      sleep 0.1
    end
    index += 1
    puts "done", ""
  end 
  
  puts "all .#{filetype} copied!"

end

copy("JPG")
copy("MOV")

exit (0)
