arr = [1,1,1,3,3,3,4,1,4,4,5]
narr = Array.new

arr.chunk{|x| x}.each{ |x,ary| ary.length > 1 ? narr.push([ary.length,x]) : narr.push(x)}

puts narr.inspect
