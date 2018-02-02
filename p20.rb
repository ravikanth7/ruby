arr = [21,56,77,42,90,44,88]
k = 3

puts arr

if k <= arr.length && k > 0
  arr.delete_at(k-1)
end

puts arr
