arr = [1,1,1,3,3,3,4,1,4,4,5]
narr = Array.new
k = -2

if k < 0 then 
  k = arr.length+k
end

narr = arr.slice(k,arr.length-k)+arr.slice(0,k)

puts narr.inspect
