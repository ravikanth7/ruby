arr = [91,22,37,81,12,44,99]
iarr = Array.new
narr = Array.new

l = arr.length
k = rand(arr.length+1)

iarr = (1..l).to_a.sample k

iarr.each {|x| narr.push(arr[x-1]) }

# narr = arr.permutation(k).to_a
puts narr

