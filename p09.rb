arr = [1,1,1,3,3,3,4,1,4,4,5]
narr = Array.new

arr.chunk{|x| x}.each{ |x,ary| narr.push(ary)}

puts narr.inspect
