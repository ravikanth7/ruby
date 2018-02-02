arr = [1,1,1,3,3,3,4,1,4,4,5]

puts arr.chunk{|x| x}.map(&:first).inspect
#puts arr.join.squeeze.split('').inspect
