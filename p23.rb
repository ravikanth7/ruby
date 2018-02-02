arr = [91,22,37,81,12,44,99]
iarr = Array.new
narr = Array.new
k = 3
l = arr.length

iarr = (1..l).to_a.sample k

iarr.each {|x| narr.push(arr[x-1]) }


puts narr

