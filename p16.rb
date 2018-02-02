arr = [1,1,1,3,3,3,4,1,4,4,5]
k = 3

puts arr.each_with_index.map { |x,i| if (i+1)%k !=0 then x end }.join.split('').inspect
