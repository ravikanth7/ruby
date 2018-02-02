arr = [91,22,37,81,12,44,99]
#arr = []
k = 4

$farr = []
def comb(arr,num,narr=[])
   if num > arr.count
     []
   elsif num == 0
     narr = []
   elsif num == 1
     arr.each_with_index do |item, index|
#       narr.push(item)
       $farr.push(narr+[item])
     end
   else
     arr.each_with_index do |item, index|
        temp = []
        temp = narr[0 .. narr.length]
#        p 't'
#        p temp
#        p 'p'
        temp.push(item)
        comb(arr.slice(index+1,arr.length),num-1,temp)
     end 
   end 
#   narr
end

comb(arr,k)
p $farr
puts arr.combination(k).to_a.inspect
