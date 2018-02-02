def primefactors(num)
 arr = []
 while num%2 == 0
   arr.push(2)
   num = num/2
 end
 
 chk = Math.sqrt(num).ceil 
 
 (3..chk).step(2)  do |x| 
    while num%x == 0
     arr.push(x)
     num = num/x
    end
  end

 if num > 2
   arr.push(n)
 end

 return arr
end


num = 315

res = primefactors(num)

puts res
